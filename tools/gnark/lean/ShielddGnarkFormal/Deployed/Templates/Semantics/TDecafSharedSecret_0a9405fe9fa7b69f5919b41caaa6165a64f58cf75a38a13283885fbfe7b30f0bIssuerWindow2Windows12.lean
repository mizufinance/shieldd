import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window72 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc72 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[104]! (scalarBits rho)[103]!
        (base rho) (twice rho) (triple rho) (acc72 rho)
        (acc73 rho) ∧
      EdwardsBridge.onCurve (acc73 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, r6168, r6169, r6170, r6171, r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, r6189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6168 at r6168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6169 at r6169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6170 at r6170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6171 at r6171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6172 at r6172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6173 at r6173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6174 at r6174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6175 at r6175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6176 at r6176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6177 at r6177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6178 at r6178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6179 at r6179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6180 at r6180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6181 at r6181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6182 at r6182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6183 at r6183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6184 at r6184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6185 at r6185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6186 at r6186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6187 at r6187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6188 at r6188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6189 at r6189
  have hshift1 : EdwardsBridge.doubleSpec (acc72 rho) (shiftOnce72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6174) (rho 6175) (rho 6176) (rho 6177) (rho 6178) (rho 6179) (rho 6180)
      (by simpa [acc72] using hacc)
      (by linear_combination r6168)
      (by linear_combination r6169)
      (by linear_combination r6170)
      (by linear_combination r6171)
      (by linear_combination r6172)
    simpa [acc72, shiftOnce72] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc72 rho) (shiftOnce72 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc72 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce72 rho) (shifted72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6179) (rho 6180) (rho 6181) (rho 6182) (rho 6183) (rho 6184) (rho 6185)
      (by simpa [shiftOnce72] using hshift1On)
      (by linear_combination r6173)
      (by linear_combination r6174)
      (by linear_combination r6175)
      (by linear_combination r6176)
      (by linear_combination r6177)
    simpa [shiftOnce72, shifted72] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce72 rho) (shifted72 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce72 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 106) (rho 105)
      (base rho) (twice rho) (triple rho) (digit72 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 106) (rho 105)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6187 + rho 6188, (1 : F) + rho 6190 + rho 6191⟩ := by
      constructor
      · refine ⟨(rho 6186 + (rho 4578) - (0)), rho 6187, ?_, ?_, ?_⟩
        · linear_combination r6178 - (rho 105) * order_cast_zero
        · linear_combination r6179
        · linear_combination r6180
      · refine ⟨(rho 6189 + (rho 4579) - ((1 : F))), rho 6190, ?_, ?_, ?_⟩
        · linear_combination r6181 - (rho 105) * order_cast_zero
        · linear_combination r6182
        · linear_combination r6183
    simpa [base, twice, triple, digit72] using hraw
  have hhigh : rho 106 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 105 =
      Bool.toZMod bits[103]! := by
    simpa only using rho_bit_of_map rho bits hbits 103 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[104]! bits[103]! (base rho) (twice rho) (triple rho)
    (digit72 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit72 rho) := by
    rw [hdigit]
    cases bits[104]! <;> cases bits[103]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted72 rho) (digit72 rho) (acc73 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6184) (rho 6185) (rho 6187 + rho 6188) ((1 : F) + rho 6190 + rho 6191)
      (rho 6192) (rho 6193) (rho 6194) (rho 6195) (rho 6196) (rho 6197)
      (by simpa [shifted72] using hshift2On)
      (by simpa [digit72] using hdigitOn)
      (by linear_combination r6184)
      (by linear_combination r6185)
      (by linear_combination r6186)
      (by linear_combination r6187)
      (by linear_combination r6188)
      (by linear_combination r6189)
    simpa [shifted72, digit72, acc73] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc73 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted72 rho) (digit72 rho) (acc73 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted72 rho) (digit72 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 106) (rho 105)
      (base rho) (twice rho) (triple rho) (acc72 rho)
      (acc73 rho) :=
    ⟨shiftOnce72 rho, shifted72 rho, digit72 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window73 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc73 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[102]! (scalarBits rho)[101]!
        (base rho) (twice rho) (triple rho) (acc73 rho)
        (acc74 rho) ∧
      EdwardsBridge.onCurve (acc74 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6190 at r6190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6191 at r6191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6192 at r6192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6193 at r6193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6194 at r6194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6195 at r6195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6196 at r6196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6197 at r6197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6198 at r6198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6199 at r6199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6200 at r6200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6201 at r6201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6202 at r6202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6203 at r6203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6204 at r6204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6205 at r6205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6206 at r6206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6207 at r6207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6208 at r6208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6209 at r6209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6210 at r6210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6211 at r6211
  have hshift1 : EdwardsBridge.doubleSpec (acc73 rho) (shiftOnce73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6196) (rho 6197) (rho 6198) (rho 6199) (rho 6200) (rho 6201) (rho 6202)
      (by simpa [acc73] using hacc)
      (by linear_combination r6190)
      (by linear_combination r6191)
      (by linear_combination r6192)
      (by linear_combination r6193)
      (by linear_combination r6194)
    simpa [acc73, shiftOnce73] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc73 rho) (shiftOnce73 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc73 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce73 rho) (shifted73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6201) (rho 6202) (rho 6203) (rho 6204) (rho 6205) (rho 6206) (rho 6207)
      (by simpa [shiftOnce73] using hshift1On)
      (by linear_combination r6195)
      (by linear_combination r6196)
      (by linear_combination r6197)
      (by linear_combination r6198)
      (by linear_combination r6199)
    simpa [shiftOnce73, shifted73] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce73 rho) (shifted73 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce73 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 104) (rho 103)
      (base rho) (twice rho) (triple rho) (digit73 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 104) (rho 103)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6209 + rho 6210, (1 : F) + rho 6212 + rho 6213⟩ := by
      constructor
      · refine ⟨(rho 6208 + (rho 4578) - (0)), rho 6209, ?_, ?_, ?_⟩
        · linear_combination r6200 - (rho 103) * order_cast_zero
        · linear_combination r6201
        · linear_combination r6202
      · refine ⟨(rho 6211 + (rho 4579) - ((1 : F))), rho 6212, ?_, ?_, ?_⟩
        · linear_combination r6203 - (rho 103) * order_cast_zero
        · linear_combination r6204
        · linear_combination r6205
    simpa [base, twice, triple, digit73] using hraw
  have hhigh : rho 104 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 103 =
      Bool.toZMod bits[101]! := by
    simpa only using rho_bit_of_map rho bits hbits 101 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[102]! bits[101]! (base rho) (twice rho) (triple rho)
    (digit73 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit73 rho) := by
    rw [hdigit]
    cases bits[102]! <;> cases bits[101]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted73 rho) (digit73 rho) (acc74 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6206) (rho 6207) (rho 6209 + rho 6210) ((1 : F) + rho 6212 + rho 6213)
      (rho 6214) (rho 6215) (rho 6216) (rho 6217) (rho 6218) (rho 6219)
      (by simpa [shifted73] using hshift2On)
      (by simpa [digit73] using hdigitOn)
      (by linear_combination r6206)
      (by linear_combination r6207)
      (by linear_combination r6208)
      (by linear_combination r6209)
      (by linear_combination r6210)
      (by linear_combination r6211)
    simpa [shifted73, digit73, acc74] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc74 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted73 rho) (digit73 rho) (acc74 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted73 rho) (digit73 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 104) (rho 103)
      (base rho) (twice rho) (triple rho) (acc73 rho)
      (acc74 rho) :=
    ⟨shiftOnce73 rho, shifted73 rho, digit73 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window74 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc74 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[100]! (scalarBits rho)[99]!
        (base rho) (twice rho) (triple rho) (acc74 rho)
        (acc75 rho) ∧
      EdwardsBridge.onCurve (acc75 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6212 at r6212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6213 at r6213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6214 at r6214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6215 at r6215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6216 at r6216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6217 at r6217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6218 at r6218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6219 at r6219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6220 at r6220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6221 at r6221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6222 at r6222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6223 at r6223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6224 at r6224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6225 at r6225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6226 at r6226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6227 at r6227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6228 at r6228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6229 at r6229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6230 at r6230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6231 at r6231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6232 at r6232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6233 at r6233
  have hshift1 : EdwardsBridge.doubleSpec (acc74 rho) (shiftOnce74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6218) (rho 6219) (rho 6220) (rho 6221) (rho 6222) (rho 6223) (rho 6224)
      (by simpa [acc74] using hacc)
      (by linear_combination r6212)
      (by linear_combination r6213)
      (by linear_combination r6214)
      (by linear_combination r6215)
      (by linear_combination r6216)
    simpa [acc74, shiftOnce74] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc74 rho) (shiftOnce74 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc74 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce74 rho) (shifted74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6223) (rho 6224) (rho 6225) (rho 6226) (rho 6227) (rho 6228) (rho 6229)
      (by simpa [shiftOnce74] using hshift1On)
      (by linear_combination r6217)
      (by linear_combination r6218)
      (by linear_combination r6219)
      (by linear_combination r6220)
      (by linear_combination r6221)
    simpa [shiftOnce74, shifted74] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce74 rho) (shifted74 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce74 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 102) (rho 101)
      (base rho) (twice rho) (triple rho) (digit74 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 102) (rho 101)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6231 + rho 6232, (1 : F) + rho 6234 + rho 6235⟩ := by
      constructor
      · refine ⟨(rho 6230 + (rho 4578) - (0)), rho 6231, ?_, ?_, ?_⟩
        · linear_combination r6222 - (rho 101) * order_cast_zero
        · linear_combination r6223
        · linear_combination r6224
      · refine ⟨(rho 6233 + (rho 4579) - ((1 : F))), rho 6234, ?_, ?_, ?_⟩
        · linear_combination r6225 - (rho 101) * order_cast_zero
        · linear_combination r6226
        · linear_combination r6227
    simpa [base, twice, triple, digit74] using hraw
  have hhigh : rho 102 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 101 =
      Bool.toZMod bits[99]! := by
    simpa only using rho_bit_of_map rho bits hbits 99 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[100]! bits[99]! (base rho) (twice rho) (triple rho)
    (digit74 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit74 rho) := by
    rw [hdigit]
    cases bits[100]! <;> cases bits[99]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted74 rho) (digit74 rho) (acc75 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6228) (rho 6229) (rho 6231 + rho 6232) ((1 : F) + rho 6234 + rho 6235)
      (rho 6236) (rho 6237) (rho 6238) (rho 6239) (rho 6240) (rho 6241)
      (by simpa [shifted74] using hshift2On)
      (by simpa [digit74] using hdigitOn)
      (by linear_combination r6228)
      (by linear_combination r6229)
      (by linear_combination r6230)
      (by linear_combination r6231)
      (by linear_combination r6232)
      (by linear_combination r6233)
    simpa [shifted74, digit74, acc75] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc75 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted74 rho) (digit74 rho) (acc75 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted74 rho) (digit74 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 102) (rho 101)
      (base rho) (twice rho) (triple rho) (acc74 rho)
      (acc75 rho) :=
    ⟨shiftOnce74 rho, shifted74 rho, digit74 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window75 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc75 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[98]! (scalarBits rho)[97]!
        (base rho) (twice rho) (triple rho) (acc75 rho)
        (acc76 rho) ∧
      EdwardsBridge.onCurve (acc76 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, p78, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6234 at r6234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6235 at r6235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6236 at r6236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6237 at r6237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6238 at r6238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6239 at r6239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6240 at r6240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6241 at r6241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6242 at r6242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6243 at r6243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6244 at r6244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6245 at r6245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6246 at r6246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6247 at r6247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6248 at r6248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6249 at r6249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6250 at r6250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6251 at r6251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6252 at r6252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6253 at r6253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6254 at r6254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6255 at r6255
  have hshift1 : EdwardsBridge.doubleSpec (acc75 rho) (shiftOnce75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6240) (rho 6241) (rho 6242) (rho 6243) (rho 6244) (rho 6245) (rho 6246)
      (by simpa [acc75] using hacc)
      (by linear_combination r6234)
      (by linear_combination r6235)
      (by linear_combination r6236)
      (by linear_combination r6237)
      (by linear_combination r6238)
    simpa [acc75, shiftOnce75] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc75 rho) (shiftOnce75 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc75 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce75 rho) (shifted75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6245) (rho 6246) (rho 6247) (rho 6248) (rho 6249) (rho 6250) (rho 6251)
      (by simpa [shiftOnce75] using hshift1On)
      (by linear_combination r6239)
      (by linear_combination r6240)
      (by linear_combination r6241)
      (by linear_combination r6242)
      (by linear_combination r6243)
    simpa [shiftOnce75, shifted75] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce75 rho) (shifted75 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce75 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 100) (rho 99)
      (base rho) (twice rho) (triple rho) (digit75 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 100) (rho 99)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6253 + rho 6254, (1 : F) + rho 6256 + rho 6257⟩ := by
      constructor
      · refine ⟨(rho 6252 + (rho 4578) - (0)), rho 6253, ?_, ?_, ?_⟩
        · linear_combination r6244 - (rho 99) * order_cast_zero
        · linear_combination r6245
        · linear_combination r6246
      · refine ⟨(rho 6255 + (rho 4579) - ((1 : F))), rho 6256, ?_, ?_, ?_⟩
        · linear_combination r6247 - (rho 99) * order_cast_zero
        · linear_combination r6248
        · linear_combination r6249
    simpa [base, twice, triple, digit75] using hraw
  have hhigh : rho 100 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 99 =
      Bool.toZMod bits[97]! := by
    simpa only using rho_bit_of_map rho bits hbits 97 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[98]! bits[97]! (base rho) (twice rho) (triple rho)
    (digit75 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit75 rho) := by
    rw [hdigit]
    cases bits[98]! <;> cases bits[97]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted75 rho) (digit75 rho) (acc76 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6250) (rho 6251) (rho 6253 + rho 6254) ((1 : F) + rho 6256 + rho 6257)
      (rho 6258) (rho 6259) (rho 6260) (rho 6261) (rho 6262) (rho 6263)
      (by simpa [shifted75] using hshift2On)
      (by simpa [digit75] using hdigitOn)
      (by linear_combination r6250)
      (by linear_combination r6251)
      (by linear_combination r6252)
      (by linear_combination r6253)
      (by linear_combination r6254)
      (by linear_combination r6255)
    simpa [shifted75, digit75, acc76] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc76 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted75 rho) (digit75 rho) (acc76 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted75 rho) (digit75 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 100) (rho 99)
      (base rho) (twice rho) (triple rho) (acc75 rho)
      (acc76 rho) :=
    ⟨shiftOnce75 rho, shifted75 rho, digit75 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window76 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc76 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[96]! (scalarBits rho)[95]!
        (base rho) (twice rho) (triple rho) (acc76 rho)
        (acc77 rho) ∧
      EdwardsBridge.onCurve (acc77 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6256, r6257, r6258, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275, r6276, r6277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6256 at r6256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6257 at r6257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6258 at r6258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6259 at r6259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6260 at r6260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6261 at r6261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6262 at r6262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6263 at r6263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6264 at r6264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6265 at r6265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6266 at r6266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6267 at r6267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6268 at r6268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6269 at r6269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6270 at r6270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6271 at r6271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6272 at r6272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6273 at r6273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6274 at r6274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6275 at r6275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6276 at r6276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6277 at r6277
  have hshift1 : EdwardsBridge.doubleSpec (acc76 rho) (shiftOnce76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6262) (rho 6263) (rho 6264) (rho 6265) (rho 6266) (rho 6267) (rho 6268)
      (by simpa [acc76] using hacc)
      (by linear_combination r6256)
      (by linear_combination r6257)
      (by linear_combination r6258)
      (by linear_combination r6259)
      (by linear_combination r6260)
    simpa [acc76, shiftOnce76] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc76 rho) (shiftOnce76 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc76 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce76 rho) (shifted76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6267) (rho 6268) (rho 6269) (rho 6270) (rho 6271) (rho 6272) (rho 6273)
      (by simpa [shiftOnce76] using hshift1On)
      (by linear_combination r6261)
      (by linear_combination r6262)
      (by linear_combination r6263)
      (by linear_combination r6264)
      (by linear_combination r6265)
    simpa [shiftOnce76, shifted76] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce76 rho) (shifted76 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce76 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 98) (rho 97)
      (base rho) (twice rho) (triple rho) (digit76 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 98) (rho 97)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6275 + rho 6276, (1 : F) + rho 6278 + rho 6279⟩ := by
      constructor
      · refine ⟨(rho 6274 + (rho 4578) - (0)), rho 6275, ?_, ?_, ?_⟩
        · linear_combination r6266 - (rho 97) * order_cast_zero
        · linear_combination r6267
        · linear_combination r6268
      · refine ⟨(rho 6277 + (rho 4579) - ((1 : F))), rho 6278, ?_, ?_, ?_⟩
        · linear_combination r6269 - (rho 97) * order_cast_zero
        · linear_combination r6270
        · linear_combination r6271
    simpa [base, twice, triple, digit76] using hraw
  have hhigh : rho 98 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 97 =
      Bool.toZMod bits[95]! := by
    simpa only using rho_bit_of_map rho bits hbits 95 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[96]! bits[95]! (base rho) (twice rho) (triple rho)
    (digit76 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit76 rho) := by
    rw [hdigit]
    cases bits[96]! <;> cases bits[95]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted76 rho) (digit76 rho) (acc77 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6272) (rho 6273) (rho 6275 + rho 6276) ((1 : F) + rho 6278 + rho 6279)
      (rho 6280) (rho 6281) (rho 6282) (rho 6283) (rho 6284) (rho 6285)
      (by simpa [shifted76] using hshift2On)
      (by simpa [digit76] using hdigitOn)
      (by linear_combination r6272)
      (by linear_combination r6273)
      (by linear_combination r6274)
      (by linear_combination r6275)
      (by linear_combination r6276)
      (by linear_combination r6277)
    simpa [shifted76, digit76, acc77] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc77 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted76 rho) (digit76 rho) (acc77 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted76 rho) (digit76 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 98) (rho 97)
      (base rho) (twice rho) (triple rho) (acc76 rho)
      (acc77 rho) :=
    ⟨shiftOnce76 rho, shifted76 rho, digit76 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window77 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc77 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[94]! (scalarBits rho)[93]!
        (base rho) (twice rho) (triple rho) (acc77 rho)
        (acc78 rho) ∧
      EdwardsBridge.onCurve (acc78 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6278 at r6278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6279 at r6279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6280 at r6280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6281 at r6281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6282 at r6282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6283 at r6283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6284 at r6284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6285 at r6285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6286 at r6286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6287 at r6287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6288 at r6288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6289 at r6289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6290 at r6290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6291 at r6291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6292 at r6292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6293 at r6293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6294 at r6294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6295 at r6295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6296 at r6296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6297 at r6297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6298 at r6298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6299 at r6299
  have hshift1 : EdwardsBridge.doubleSpec (acc77 rho) (shiftOnce77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6284) (rho 6285) (rho 6286) (rho 6287) (rho 6288) (rho 6289) (rho 6290)
      (by simpa [acc77] using hacc)
      (by linear_combination r6278)
      (by linear_combination r6279)
      (by linear_combination r6280)
      (by linear_combination r6281)
      (by linear_combination r6282)
    simpa [acc77, shiftOnce77] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc77 rho) (shiftOnce77 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc77 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce77 rho) (shifted77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6289) (rho 6290) (rho 6291) (rho 6292) (rho 6293) (rho 6294) (rho 6295)
      (by simpa [shiftOnce77] using hshift1On)
      (by linear_combination r6283)
      (by linear_combination r6284)
      (by linear_combination r6285)
      (by linear_combination r6286)
      (by linear_combination r6287)
    simpa [shiftOnce77, shifted77] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce77 rho) (shifted77 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce77 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 96) (rho 95)
      (base rho) (twice rho) (triple rho) (digit77 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 96) (rho 95)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6297 + rho 6298, (1 : F) + rho 6300 + rho 6301⟩ := by
      constructor
      · refine ⟨(rho 6296 + (rho 4578) - (0)), rho 6297, ?_, ?_, ?_⟩
        · linear_combination r6288 - (rho 95) * order_cast_zero
        · linear_combination r6289
        · linear_combination r6290
      · refine ⟨(rho 6299 + (rho 4579) - ((1 : F))), rho 6300, ?_, ?_, ?_⟩
        · linear_combination r6291 - (rho 95) * order_cast_zero
        · linear_combination r6292
        · linear_combination r6293
    simpa [base, twice, triple, digit77] using hraw
  have hhigh : rho 96 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 95 =
      Bool.toZMod bits[93]! := by
    simpa only using rho_bit_of_map rho bits hbits 93 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[94]! bits[93]! (base rho) (twice rho) (triple rho)
    (digit77 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit77 rho) := by
    rw [hdigit]
    cases bits[94]! <;> cases bits[93]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted77 rho) (digit77 rho) (acc78 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6294) (rho 6295) (rho 6297 + rho 6298) ((1 : F) + rho 6300 + rho 6301)
      (rho 6302) (rho 6303) (rho 6304) (rho 6305) (rho 6306) (rho 6307)
      (by simpa [shifted77] using hshift2On)
      (by simpa [digit77] using hdigitOn)
      (by linear_combination r6294)
      (by linear_combination r6295)
      (by linear_combination r6296)
      (by linear_combination r6297)
      (by linear_combination r6298)
      (by linear_combination r6299)
    simpa [shifted77, digit77, acc78] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc78 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted77 rho) (digit77 rho) (acc78 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted77 rho) (digit77 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 96) (rho 95)
      (base rho) (twice rho) (triple rho) (acc77 rho)
      (acc78 rho) :=
    ⟨shiftOnce77 rho, shifted77 rho, digit77 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
