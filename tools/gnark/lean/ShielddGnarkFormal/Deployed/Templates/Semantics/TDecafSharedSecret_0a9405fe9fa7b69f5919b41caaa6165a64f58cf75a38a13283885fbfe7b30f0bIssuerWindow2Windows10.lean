import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window60 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc60 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[128]! (scalarBits rho)[127]!
        (base rho) (twice rho) (triple rho) (acc60 rho)
        (acc61 rho) ∧
      EdwardsBridge.onCurve (acc61 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, p74, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5904, r5905, r5906, r5907, r5908, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, r5923, r5924, r5925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5904 at r5904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5905 at r5905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5906 at r5906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5907 at r5907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5908 at r5908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5909 at r5909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5910 at r5910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5911 at r5911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5912 at r5912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5913 at r5913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5914 at r5914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5915 at r5915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5916 at r5916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5917 at r5917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5918 at r5918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5919 at r5919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5920 at r5920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5921 at r5921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5922 at r5922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5923 at r5923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5924 at r5924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5925 at r5925
  have hshift1 : EdwardsBridge.doubleSpec (acc60 rho) (shiftOnce60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5910) (rho 5911) (rho 5912) (rho 5913) (rho 5914) (rho 5915) (rho 5916)
      (by simpa [acc60] using hacc)
      (by linear_combination r5904)
      (by linear_combination r5905)
      (by linear_combination r5906)
      (by linear_combination r5907)
      (by linear_combination r5908)
    simpa [acc60, shiftOnce60] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc60 rho) (shiftOnce60 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc60 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce60 rho) (shifted60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5915) (rho 5916) (rho 5917) (rho 5918) (rho 5919) (rho 5920) (rho 5921)
      (by simpa [shiftOnce60] using hshift1On)
      (by linear_combination r5909)
      (by linear_combination r5910)
      (by linear_combination r5911)
      (by linear_combination r5912)
      (by linear_combination r5913)
    simpa [shiftOnce60, shifted60] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce60 rho) (shifted60 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce60 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 130) (rho 129)
      (base rho) (twice rho) (triple rho) (digit60 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 130) (rho 129)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5923 + rho 5924, (1 : F) + rho 5926 + rho 5927⟩ := by
      constructor
      · refine ⟨(rho 5922 + (rho 4578) - (0)), rho 5923, ?_, ?_, ?_⟩
        · linear_combination r5914 - (rho 129) * order_cast_zero
        · linear_combination r5915
        · linear_combination r5916
      · refine ⟨(rho 5925 + (rho 4579) - ((1 : F))), rho 5926, ?_, ?_, ?_⟩
        · linear_combination r5917 - (rho 129) * order_cast_zero
        · linear_combination r5918
        · linear_combination r5919
    simpa [base, twice, triple, digit60] using hraw
  have hhigh : rho 130 =
      Bool.toZMod bits[128]! := by
    simpa only using rho_bit_of_map rho bits hbits 128 (by decide +kernel)
  have hlow : rho 129 =
      Bool.toZMod bits[127]! := by
    simpa only using rho_bit_of_map rho bits hbits 127 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[128]! bits[127]! (base rho) (twice rho) (triple rho)
    (digit60 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit60 rho) := by
    rw [hdigit]
    cases bits[128]! <;> cases bits[127]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted60 rho) (digit60 rho) (acc61 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5920) (rho 5921) (rho 5923 + rho 5924) ((1 : F) + rho 5926 + rho 5927)
      (rho 5928) (rho 5929) (rho 5930) (rho 5931) (rho 5932) (rho 5933)
      (by simpa [shifted60] using hshift2On)
      (by simpa [digit60] using hdigitOn)
      (by linear_combination r5920)
      (by linear_combination r5921)
      (by linear_combination r5922)
      (by linear_combination r5923)
      (by linear_combination r5924)
      (by linear_combination r5925)
    simpa [shifted60, digit60, acc61] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc61 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted60 rho) (digit60 rho) (acc61 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted60 rho) (digit60 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 130) (rho 129)
      (base rho) (twice rho) (triple rho) (acc60 rho)
      (acc61 rho) :=
    ⟨shiftOnce60 rho, shifted60 rho, digit60 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window61 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc61 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[126]! (scalarBits rho)[125]!
        (base rho) (twice rho) (triple rho) (acc61 rho)
        (acc62 rho) ∧
      EdwardsBridge.onCurve (acc62 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5926 at r5926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5927 at r5927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5928 at r5928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5929 at r5929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5930 at r5930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5931 at r5931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5932 at r5932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5933 at r5933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5934 at r5934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5935 at r5935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5936 at r5936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5937 at r5937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5938 at r5938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5939 at r5939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5940 at r5940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5941 at r5941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5942 at r5942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5943 at r5943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5944 at r5944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5945 at r5945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5946 at r5946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5947 at r5947
  have hshift1 : EdwardsBridge.doubleSpec (acc61 rho) (shiftOnce61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5932) (rho 5933) (rho 5934) (rho 5935) (rho 5936) (rho 5937) (rho 5938)
      (by simpa [acc61] using hacc)
      (by linear_combination r5926)
      (by linear_combination r5927)
      (by linear_combination r5928)
      (by linear_combination r5929)
      (by linear_combination r5930)
    simpa [acc61, shiftOnce61] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc61 rho) (shiftOnce61 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc61 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce61 rho) (shifted61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5937) (rho 5938) (rho 5939) (rho 5940) (rho 5941) (rho 5942) (rho 5943)
      (by simpa [shiftOnce61] using hshift1On)
      (by linear_combination r5931)
      (by linear_combination r5932)
      (by linear_combination r5933)
      (by linear_combination r5934)
      (by linear_combination r5935)
    simpa [shiftOnce61, shifted61] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce61 rho) (shifted61 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce61 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 128) (rho 127)
      (base rho) (twice rho) (triple rho) (digit61 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 128) (rho 127)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5945 + rho 5946, (1 : F) + rho 5948 + rho 5949⟩ := by
      constructor
      · refine ⟨(rho 5944 + (rho 4578) - (0)), rho 5945, ?_, ?_, ?_⟩
        · linear_combination r5936 - (rho 127) * order_cast_zero
        · linear_combination r5937
        · linear_combination r5938
      · refine ⟨(rho 5947 + (rho 4579) - ((1 : F))), rho 5948, ?_, ?_, ?_⟩
        · linear_combination r5939 - (rho 127) * order_cast_zero
        · linear_combination r5940
        · linear_combination r5941
    simpa [base, twice, triple, digit61] using hraw
  have hhigh : rho 128 =
      Bool.toZMod bits[126]! := by
    simpa only using rho_bit_of_map rho bits hbits 126 (by decide +kernel)
  have hlow : rho 127 =
      Bool.toZMod bits[125]! := by
    simpa only using rho_bit_of_map rho bits hbits 125 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[126]! bits[125]! (base rho) (twice rho) (triple rho)
    (digit61 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit61 rho) := by
    rw [hdigit]
    cases bits[126]! <;> cases bits[125]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted61 rho) (digit61 rho) (acc62 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5942) (rho 5943) (rho 5945 + rho 5946) ((1 : F) + rho 5948 + rho 5949)
      (rho 5950) (rho 5951) (rho 5952) (rho 5953) (rho 5954) (rho 5955)
      (by simpa [shifted61] using hshift2On)
      (by simpa [digit61] using hdigitOn)
      (by linear_combination r5942)
      (by linear_combination r5943)
      (by linear_combination r5944)
      (by linear_combination r5945)
      (by linear_combination r5946)
      (by linear_combination r5947)
    simpa [shifted61, digit61, acc62] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc62 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted61 rho) (digit61 rho) (acc62 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted61 rho) (digit61 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 128) (rho 127)
      (base rho) (twice rho) (triple rho) (acc61 rho)
      (acc62 rho) :=
    ⟨shiftOnce61 rho, shifted61 rho, digit61 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window62 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc62 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[124]! (scalarBits rho)[123]!
        (base rho) (twice rho) (triple rho) (acc62 rho)
        (acc63 rho) ∧
      EdwardsBridge.onCurve (acc63 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5948 at r5948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5949 at r5949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5950 at r5950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5951 at r5951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5952 at r5952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5953 at r5953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5954 at r5954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5955 at r5955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5956 at r5956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5957 at r5957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5958 at r5958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5959 at r5959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5960 at r5960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5961 at r5961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5962 at r5962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5963 at r5963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5964 at r5964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5965 at r5965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5966 at r5966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5967 at r5967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5968 at r5968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5969 at r5969
  have hshift1 : EdwardsBridge.doubleSpec (acc62 rho) (shiftOnce62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5954) (rho 5955) (rho 5956) (rho 5957) (rho 5958) (rho 5959) (rho 5960)
      (by simpa [acc62] using hacc)
      (by linear_combination r5948)
      (by linear_combination r5949)
      (by linear_combination r5950)
      (by linear_combination r5951)
      (by linear_combination r5952)
    simpa [acc62, shiftOnce62] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc62 rho) (shiftOnce62 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc62 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce62 rho) (shifted62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5959) (rho 5960) (rho 5961) (rho 5962) (rho 5963) (rho 5964) (rho 5965)
      (by simpa [shiftOnce62] using hshift1On)
      (by linear_combination r5953)
      (by linear_combination r5954)
      (by linear_combination r5955)
      (by linear_combination r5956)
      (by linear_combination r5957)
    simpa [shiftOnce62, shifted62] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce62 rho) (shifted62 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce62 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 126) (rho 125)
      (base rho) (twice rho) (triple rho) (digit62 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 126) (rho 125)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5967 + rho 5968, (1 : F) + rho 5970 + rho 5971⟩ := by
      constructor
      · refine ⟨(rho 5966 + (rho 4578) - (0)), rho 5967, ?_, ?_, ?_⟩
        · linear_combination r5958 - (rho 125) * order_cast_zero
        · linear_combination r5959
        · linear_combination r5960
      · refine ⟨(rho 5969 + (rho 4579) - ((1 : F))), rho 5970, ?_, ?_, ?_⟩
        · linear_combination r5961 - (rho 125) * order_cast_zero
        · linear_combination r5962
        · linear_combination r5963
    simpa [base, twice, triple, digit62] using hraw
  have hhigh : rho 126 =
      Bool.toZMod bits[124]! := by
    simpa only using rho_bit_of_map rho bits hbits 124 (by decide +kernel)
  have hlow : rho 125 =
      Bool.toZMod bits[123]! := by
    simpa only using rho_bit_of_map rho bits hbits 123 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[124]! bits[123]! (base rho) (twice rho) (triple rho)
    (digit62 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit62 rho) := by
    rw [hdigit]
    cases bits[124]! <;> cases bits[123]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted62 rho) (digit62 rho) (acc63 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5964) (rho 5965) (rho 5967 + rho 5968) ((1 : F) + rho 5970 + rho 5971)
      (rho 5972) (rho 5973) (rho 5974) (rho 5975) (rho 5976) (rho 5977)
      (by simpa [shifted62] using hshift2On)
      (by simpa [digit62] using hdigitOn)
      (by linear_combination r5964)
      (by linear_combination r5965)
      (by linear_combination r5966)
      (by linear_combination r5967)
      (by linear_combination r5968)
      (by linear_combination r5969)
    simpa [shifted62, digit62, acc63] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc63 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted62 rho) (digit62 rho) (acc63 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted62 rho) (digit62 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 126) (rho 125)
      (base rho) (twice rho) (triple rho) (acc62 rho)
      (acc63 rho) :=
    ⟨shiftOnce62 rho, shifted62 rho, digit62 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window63 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc63 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[122]! (scalarBits rho)[121]!
        (base rho) (twice rho) (triple rho) (acc63 rho)
        (acc64 rho) ∧
      EdwardsBridge.onCurve (acc64 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5970 at r5970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5971 at r5971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5972 at r5972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5973 at r5973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5974 at r5974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5975 at r5975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5976 at r5976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5977 at r5977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5978 at r5978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5979 at r5979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5980 at r5980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5981 at r5981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5982 at r5982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5983 at r5983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5984 at r5984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5985 at r5985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5986 at r5986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5987 at r5987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5988 at r5988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5989 at r5989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5990 at r5990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5991 at r5991
  have hshift1 : EdwardsBridge.doubleSpec (acc63 rho) (shiftOnce63 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5976) (rho 5977) (rho 5978) (rho 5979) (rho 5980) (rho 5981) (rho 5982)
      (by simpa [acc63] using hacc)
      (by linear_combination r5970)
      (by linear_combination r5971)
      (by linear_combination r5972)
      (by linear_combination r5973)
      (by linear_combination r5974)
    simpa [acc63, shiftOnce63] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce63 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc63 rho) (shiftOnce63 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc63 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce63 rho) (shifted63 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5981) (rho 5982) (rho 5983) (rho 5984) (rho 5985) (rho 5986) (rho 5987)
      (by simpa [shiftOnce63] using hshift1On)
      (by linear_combination r5975)
      (by linear_combination r5976)
      (by linear_combination r5977)
      (by linear_combination r5978)
      (by linear_combination r5979)
    simpa [shiftOnce63, shifted63] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted63 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce63 rho) (shifted63 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce63 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 124) (rho 123)
      (base rho) (twice rho) (triple rho) (digit63 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 124) (rho 123)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5989 + rho 5990, (1 : F) + rho 5992 + rho 5993⟩ := by
      constructor
      · refine ⟨(rho 5988 + (rho 4578) - (0)), rho 5989, ?_, ?_, ?_⟩
        · linear_combination r5980 - (rho 123) * order_cast_zero
        · linear_combination r5981
        · linear_combination r5982
      · refine ⟨(rho 5991 + (rho 4579) - ((1 : F))), rho 5992, ?_, ?_, ?_⟩
        · linear_combination r5983 - (rho 123) * order_cast_zero
        · linear_combination r5984
        · linear_combination r5985
    simpa [base, twice, triple, digit63] using hraw
  have hhigh : rho 124 =
      Bool.toZMod bits[122]! := by
    simpa only using rho_bit_of_map rho bits hbits 122 (by decide +kernel)
  have hlow : rho 123 =
      Bool.toZMod bits[121]! := by
    simpa only using rho_bit_of_map rho bits hbits 121 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[122]! bits[121]! (base rho) (twice rho) (triple rho)
    (digit63 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit63 rho) := by
    rw [hdigit]
    cases bits[122]! <;> cases bits[121]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted63 rho) (digit63 rho) (acc64 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5986) (rho 5987) (rho 5989 + rho 5990) ((1 : F) + rho 5992 + rho 5993)
      (rho 5994) (rho 5995) (rho 5996) (rho 5997) (rho 5998) (rho 5999)
      (by simpa [shifted63] using hshift2On)
      (by simpa [digit63] using hdigitOn)
      (by linear_combination r5986)
      (by linear_combination r5987)
      (by linear_combination r5988)
      (by linear_combination r5989)
      (by linear_combination r5990)
      (by linear_combination r5991)
    simpa [shifted63, digit63, acc64] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc64 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted63 rho) (digit63 rho) (acc64 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted63 rho) (digit63 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 124) (rho 123)
      (base rho) (twice rho) (triple rho) (acc63 rho)
      (acc64 rho) :=
    ⟨shiftOnce63 rho, shifted63 rho, digit63 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window64 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc64 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[120]! (scalarBits rho)[119]!
        (base rho) (twice rho) (triple rho) (acc64 rho)
        (acc65 rho) ∧
      EdwardsBridge.onCurve (acc65 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, p75, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, r6013, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5992 at r5992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5993 at r5993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5994 at r5994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5995 at r5995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5996 at r5996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5997 at r5997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5998 at r5998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5999 at r5999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6000 at r6000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6001 at r6001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6002 at r6002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6003 at r6003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6004 at r6004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6005 at r6005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6006 at r6006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6007 at r6007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6008 at r6008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6009 at r6009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6010 at r6010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6011 at r6011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6012 at r6012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6013 at r6013
  have hshift1 : EdwardsBridge.doubleSpec (acc64 rho) (shiftOnce64 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5998) (rho 5999) (rho 6000) (rho 6001) (rho 6002) (rho 6003) (rho 6004)
      (by simpa [acc64] using hacc)
      (by linear_combination r5992)
      (by linear_combination r5993)
      (by linear_combination r5994)
      (by linear_combination r5995)
      (by linear_combination r5996)
    simpa [acc64, shiftOnce64] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce64 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc64 rho) (shiftOnce64 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc64 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce64 rho) (shifted64 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6003) (rho 6004) (rho 6005) (rho 6006) (rho 6007) (rho 6008) (rho 6009)
      (by simpa [shiftOnce64] using hshift1On)
      (by linear_combination r5997)
      (by linear_combination r5998)
      (by linear_combination r5999)
      (by linear_combination r6000)
      (by linear_combination r6001)
    simpa [shiftOnce64, shifted64] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted64 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce64 rho) (shifted64 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce64 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 122) (rho 121)
      (base rho) (twice rho) (triple rho) (digit64 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 122) (rho 121)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6011 + rho 6012, (1 : F) + rho 6014 + rho 6015⟩ := by
      constructor
      · refine ⟨(rho 6010 + (rho 4578) - (0)), rho 6011, ?_, ?_, ?_⟩
        · linear_combination r6002 - (rho 121) * order_cast_zero
        · linear_combination r6003
        · linear_combination r6004
      · refine ⟨(rho 6013 + (rho 4579) - ((1 : F))), rho 6014, ?_, ?_, ?_⟩
        · linear_combination r6005 - (rho 121) * order_cast_zero
        · linear_combination r6006
        · linear_combination r6007
    simpa [base, twice, triple, digit64] using hraw
  have hhigh : rho 122 =
      Bool.toZMod bits[120]! := by
    simpa only using rho_bit_of_map rho bits hbits 120 (by decide +kernel)
  have hlow : rho 121 =
      Bool.toZMod bits[119]! := by
    simpa only using rho_bit_of_map rho bits hbits 119 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[120]! bits[119]! (base rho) (twice rho) (triple rho)
    (digit64 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit64 rho) := by
    rw [hdigit]
    cases bits[120]! <;> cases bits[119]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted64 rho) (digit64 rho) (acc65 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6008) (rho 6009) (rho 6011 + rho 6012) ((1 : F) + rho 6014 + rho 6015)
      (rho 6016) (rho 6017) (rho 6018) (rho 6019) (rho 6020) (rho 6021)
      (by simpa [shifted64] using hshift2On)
      (by simpa [digit64] using hdigitOn)
      (by linear_combination r6008)
      (by linear_combination r6009)
      (by linear_combination r6010)
      (by linear_combination r6011)
      (by linear_combination r6012)
      (by linear_combination r6013)
    simpa [shifted64, digit64, acc65] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc65 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted64 rho) (digit64 rho) (acc65 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted64 rho) (digit64 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 122) (rho 121)
      (base rho) (twice rho) (triple rho) (acc64 rho)
      (acc65 rho) :=
    ⟨shiftOnce64 rho, shifted64 rho, digit64 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window65 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc65 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[118]! (scalarBits rho)[117]!
        (base rho) (twice rho) (triple rho) (acc65 rho)
        (acc66 rho) ∧
      EdwardsBridge.onCurve (acc66 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6014 at r6014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6015 at r6015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6016 at r6016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6017 at r6017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6018 at r6018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6019 at r6019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6020 at r6020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6021 at r6021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6022 at r6022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6023 at r6023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6024 at r6024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6025 at r6025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6026 at r6026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6027 at r6027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6028 at r6028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6029 at r6029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6030 at r6030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6031 at r6031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6032 at r6032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6033 at r6033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6034 at r6034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6035 at r6035
  have hshift1 : EdwardsBridge.doubleSpec (acc65 rho) (shiftOnce65 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6020) (rho 6021) (rho 6022) (rho 6023) (rho 6024) (rho 6025) (rho 6026)
      (by simpa [acc65] using hacc)
      (by linear_combination r6014)
      (by linear_combination r6015)
      (by linear_combination r6016)
      (by linear_combination r6017)
      (by linear_combination r6018)
    simpa [acc65, shiftOnce65] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce65 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc65 rho) (shiftOnce65 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc65 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce65 rho) (shifted65 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6025) (rho 6026) (rho 6027) (rho 6028) (rho 6029) (rho 6030) (rho 6031)
      (by simpa [shiftOnce65] using hshift1On)
      (by linear_combination r6019)
      (by linear_combination r6020)
      (by linear_combination r6021)
      (by linear_combination r6022)
      (by linear_combination r6023)
    simpa [shiftOnce65, shifted65] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted65 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce65 rho) (shifted65 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce65 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 120) (rho 119)
      (base rho) (twice rho) (triple rho) (digit65 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 120) (rho 119)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6033 + rho 6034, (1 : F) + rho 6036 + rho 6037⟩ := by
      constructor
      · refine ⟨(rho 6032 + (rho 4578) - (0)), rho 6033, ?_, ?_, ?_⟩
        · linear_combination r6024 - (rho 119) * order_cast_zero
        · linear_combination r6025
        · linear_combination r6026
      · refine ⟨(rho 6035 + (rho 4579) - ((1 : F))), rho 6036, ?_, ?_, ?_⟩
        · linear_combination r6027 - (rho 119) * order_cast_zero
        · linear_combination r6028
        · linear_combination r6029
    simpa [base, twice, triple, digit65] using hraw
  have hhigh : rho 120 =
      Bool.toZMod bits[118]! := by
    simpa only using rho_bit_of_map rho bits hbits 118 (by decide +kernel)
  have hlow : rho 119 =
      Bool.toZMod bits[117]! := by
    simpa only using rho_bit_of_map rho bits hbits 117 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[118]! bits[117]! (base rho) (twice rho) (triple rho)
    (digit65 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit65 rho) := by
    rw [hdigit]
    cases bits[118]! <;> cases bits[117]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted65 rho) (digit65 rho) (acc66 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6030) (rho 6031) (rho 6033 + rho 6034) ((1 : F) + rho 6036 + rho 6037)
      (rho 6038) (rho 6039) (rho 6040) (rho 6041) (rho 6042) (rho 6043)
      (by simpa [shifted65] using hshift2On)
      (by simpa [digit65] using hdigitOn)
      (by linear_combination r6030)
      (by linear_combination r6031)
      (by linear_combination r6032)
      (by linear_combination r6033)
      (by linear_combination r6034)
      (by linear_combination r6035)
    simpa [shifted65, digit65, acc66] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc66 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted65 rho) (digit65 rho) (acc66 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted65 rho) (digit65 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 120) (rho 119)
      (base rho) (twice rho) (triple rho) (acc65 rho)
      (acc66 rho) :=
    ⟨shiftOnce65 rho, shifted65 rho, digit65 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
