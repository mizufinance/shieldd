import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window54 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc54 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[140]! (scalarBits rho)[139]!
        (base rho) (twice rho) (triple rho) (acc54 rho)
        (acc55 rho) ∧
      EdwardsBridge.onCurve (acc55 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3924 at r3924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3925 at r3925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3926 at r3926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3927 at r3927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3928 at r3928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3929 at r3929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3930 at r3930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3931 at r3931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3932 at r3932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3933 at r3933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3934 at r3934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3935 at r3935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3936 at r3936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3937 at r3937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3938 at r3938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3939 at r3939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3940 at r3940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3941 at r3941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3942 at r3942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3943 at r3943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3944 at r3944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3945 at r3945
  have hshift1 : EdwardsBridge.doubleSpec (acc54 rho) (shiftOnce54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3416) (rho 3417) (rho 3418) (rho 3419) (rho 3420) (rho 3421) (rho 3422)
      (by simpa [acc54] using hacc)
      (by linear_combination r3924)
      (by linear_combination r3925)
      (by linear_combination r3926)
      (by linear_combination r3927)
      (by linear_combination r3928)
    simpa [acc54, shiftOnce54] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc54 rho) (shiftOnce54 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc54 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce54 rho) (shifted54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3421) (rho 3422) (rho 3423) (rho 3424) (rho 3425) (rho 3426) (rho 3427)
      (by simpa [shiftOnce54] using hshift1On)
      (by linear_combination r3929)
      (by linear_combination r3930)
      (by linear_combination r3931)
      (by linear_combination r3932)
      (by linear_combination r3933)
    simpa [shiftOnce54, shifted54] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce54 rho) (shifted54 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce54 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1123) (rho 1122)
      (base rho) (twice rho) (triple rho) (digit54 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1123) (rho 1122)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3429 + rho 3430, (1 : F) + rho 3432 + rho 3433⟩ := by
      constructor
      · refine ⟨(rho 3428 + (rho 2216) - (0)), rho 3429, ?_, ?_, ?_⟩
        · linear_combination r3934
        · linear_combination r3935
        · linear_combination r3936
      · refine ⟨(rho 3431 + (rho 2217) - ((1 : F))), rho 3432, ?_, ?_, ?_⟩
        · linear_combination r3937
        · linear_combination r3938
        · linear_combination r3939
    simpa [base, twice, triple, digit54] using hraw
  have hhigh : rho 1123 =
      Bool.toZMod bits[140]! := by
    simpa only using rho_bit_of_map rho bits hbits 140 (by decide +kernel)
  have hlow : rho 1122 =
      Bool.toZMod bits[139]! := by
    simpa only using rho_bit_of_map rho bits hbits 139 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[140]! bits[139]! (base rho) (twice rho) (triple rho)
    (digit54 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit54 rho) := by
    rw [hdigit]
    cases bits[140]! <;> cases bits[139]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted54 rho) (digit54 rho) (acc55 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3426) (rho 3427) (rho 3429 + rho 3430) ((1 : F) + rho 3432 + rho 3433)
      (rho 3434) (rho 3435) (rho 3436) (rho 3437) (rho 3438) (rho 3439)
      (by simpa [shifted54] using hshift2On)
      (by simpa [digit54] using hdigitOn)
      (by linear_combination r3940)
      (by linear_combination r3941)
      (by linear_combination r3942)
      (by linear_combination r3943)
      (by linear_combination r3944)
      (by linear_combination r3945)
    simpa [shifted54, digit54, acc55] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc55 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted54 rho) (digit54 rho) (acc55 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted54 rho) (digit54 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1123) (rho 1122)
      (base rho) (twice rho) (triple rho) (acc54 rho)
      (acc55 rho) :=
    ⟨shiftOnce54 rho, shifted54 rho, digit54 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window55 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc55 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[138]! (scalarBits rho)[137]!
        (base rho) (twice rho) (triple rho) (acc55 rho)
        (acc56 rho) ∧
      EdwardsBridge.onCurve (acc56 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3946 at r3946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3947 at r3947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3948 at r3948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3949 at r3949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3950 at r3950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3951 at r3951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3952 at r3952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3953 at r3953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3954 at r3954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3955 at r3955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3956 at r3956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3957 at r3957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3958 at r3958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3959 at r3959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3960 at r3960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3961 at r3961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3962 at r3962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3963 at r3963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3964 at r3964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3965 at r3965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3966 at r3966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3967 at r3967
  have hshift1 : EdwardsBridge.doubleSpec (acc55 rho) (shiftOnce55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3438) (rho 3439) (rho 3440) (rho 3441) (rho 3442) (rho 3443) (rho 3444)
      (by simpa [acc55] using hacc)
      (by linear_combination r3946)
      (by linear_combination r3947)
      (by linear_combination r3948)
      (by linear_combination r3949)
      (by linear_combination r3950)
    simpa [acc55, shiftOnce55] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc55 rho) (shiftOnce55 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc55 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce55 rho) (shifted55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3443) (rho 3444) (rho 3445) (rho 3446) (rho 3447) (rho 3448) (rho 3449)
      (by simpa [shiftOnce55] using hshift1On)
      (by linear_combination r3951)
      (by linear_combination r3952)
      (by linear_combination r3953)
      (by linear_combination r3954)
      (by linear_combination r3955)
    simpa [shiftOnce55, shifted55] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce55 rho) (shifted55 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce55 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1121) (rho 1120)
      (base rho) (twice rho) (triple rho) (digit55 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1121) (rho 1120)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3451 + rho 3452, (1 : F) + rho 3454 + rho 3455⟩ := by
      constructor
      · refine ⟨(rho 3450 + (rho 2216) - (0)), rho 3451, ?_, ?_, ?_⟩
        · linear_combination r3956
        · linear_combination r3957
        · linear_combination r3958
      · refine ⟨(rho 3453 + (rho 2217) - ((1 : F))), rho 3454, ?_, ?_, ?_⟩
        · linear_combination r3959
        · linear_combination r3960
        · linear_combination r3961
    simpa [base, twice, triple, digit55] using hraw
  have hhigh : rho 1121 =
      Bool.toZMod bits[138]! := by
    simpa only using rho_bit_of_map rho bits hbits 138 (by decide +kernel)
  have hlow : rho 1120 =
      Bool.toZMod bits[137]! := by
    simpa only using rho_bit_of_map rho bits hbits 137 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[138]! bits[137]! (base rho) (twice rho) (triple rho)
    (digit55 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit55 rho) := by
    rw [hdigit]
    cases bits[138]! <;> cases bits[137]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted55 rho) (digit55 rho) (acc56 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3448) (rho 3449) (rho 3451 + rho 3452) ((1 : F) + rho 3454 + rho 3455)
      (rho 3456) (rho 3457) (rho 3458) (rho 3459) (rho 3460) (rho 3461)
      (by simpa [shifted55] using hshift2On)
      (by simpa [digit55] using hdigitOn)
      (by linear_combination r3962)
      (by linear_combination r3963)
      (by linear_combination r3964)
      (by linear_combination r3965)
      (by linear_combination r3966)
      (by linear_combination r3967)
    simpa [shifted55, digit55, acc56] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc56 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted55 rho) (digit55 rho) (acc56 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted55 rho) (digit55 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1121) (rho 1120)
      (base rho) (twice rho) (triple rho) (acc55 rho)
      (acc56 rho) :=
    ⟨shiftOnce55 rho, shifted55 rho, digit55 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window56 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc56 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[136]! (scalarBits rho)[135]!
        (base rho) (twice rho) (triple rho) (acc56 rho)
        (acc57 rho) ∧
      EdwardsBridge.onCurve (acc57 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3968 at r3968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3969 at r3969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3970 at r3970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3971 at r3971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3972 at r3972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3973 at r3973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3974 at r3974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3975 at r3975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3976 at r3976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3977 at r3977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3978 at r3978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3979 at r3979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3980 at r3980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3981 at r3981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3982 at r3982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3983 at r3983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3984 at r3984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3985 at r3985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3986 at r3986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3987 at r3987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3988 at r3988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3989 at r3989
  have hshift1 : EdwardsBridge.doubleSpec (acc56 rho) (shiftOnce56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3460) (rho 3461) (rho 3462) (rho 3463) (rho 3464) (rho 3465) (rho 3466)
      (by simpa [acc56] using hacc)
      (by linear_combination r3968)
      (by linear_combination r3969)
      (by linear_combination r3970)
      (by linear_combination r3971)
      (by linear_combination r3972)
    simpa [acc56, shiftOnce56] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc56 rho) (shiftOnce56 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc56 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce56 rho) (shifted56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3465) (rho 3466) (rho 3467) (rho 3468) (rho 3469) (rho 3470) (rho 3471)
      (by simpa [shiftOnce56] using hshift1On)
      (by linear_combination r3973)
      (by linear_combination r3974)
      (by linear_combination r3975)
      (by linear_combination r3976)
      (by linear_combination r3977)
    simpa [shiftOnce56, shifted56] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce56 rho) (shifted56 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce56 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1119) (rho 1118)
      (base rho) (twice rho) (triple rho) (digit56 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1119) (rho 1118)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3473 + rho 3474, (1 : F) + rho 3476 + rho 3477⟩ := by
      constructor
      · refine ⟨(rho 3472 + (rho 2216) - (0)), rho 3473, ?_, ?_, ?_⟩
        · linear_combination r3978
        · linear_combination r3979
        · linear_combination r3980
      · refine ⟨(rho 3475 + (rho 2217) - ((1 : F))), rho 3476, ?_, ?_, ?_⟩
        · linear_combination r3981
        · linear_combination r3982
        · linear_combination r3983
    simpa [base, twice, triple, digit56] using hraw
  have hhigh : rho 1119 =
      Bool.toZMod bits[136]! := by
    simpa only using rho_bit_of_map rho bits hbits 136 (by decide +kernel)
  have hlow : rho 1118 =
      Bool.toZMod bits[135]! := by
    simpa only using rho_bit_of_map rho bits hbits 135 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[136]! bits[135]! (base rho) (twice rho) (triple rho)
    (digit56 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit56 rho) := by
    rw [hdigit]
    cases bits[136]! <;> cases bits[135]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted56 rho) (digit56 rho) (acc57 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3470) (rho 3471) (rho 3473 + rho 3474) ((1 : F) + rho 3476 + rho 3477)
      (rho 3478) (rho 3479) (rho 3480) (rho 3481) (rho 3482) (rho 3483)
      (by simpa [shifted56] using hshift2On)
      (by simpa [digit56] using hdigitOn)
      (by linear_combination r3984)
      (by linear_combination r3985)
      (by linear_combination r3986)
      (by linear_combination r3987)
      (by linear_combination r3988)
      (by linear_combination r3989)
    simpa [shifted56, digit56, acc57] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc57 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted56 rho) (digit56 rho) (acc57 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted56 rho) (digit56 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1119) (rho 1118)
      (base rho) (twice rho) (triple rho) (acc56 rho)
      (acc57 rho) :=
    ⟨shiftOnce56 rho, shifted56 rho, digit56 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window57 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc57 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[134]! (scalarBits rho)[133]!
        (base rho) (twice rho) (triple rho) (acc57 rho)
        (acc58 rho) ∧
      EdwardsBridge.onCurve (acc58 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3990 at r3990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3991 at r3991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3992 at r3992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3993 at r3993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3994 at r3994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3995 at r3995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3996 at r3996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3997 at r3997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3998 at r3998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3999 at r3999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4000 at r4000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4001 at r4001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4002 at r4002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4003 at r4003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4004 at r4004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4005 at r4005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4006 at r4006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4007 at r4007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4008 at r4008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4009 at r4009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4010 at r4010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4011 at r4011
  have hshift1 : EdwardsBridge.doubleSpec (acc57 rho) (shiftOnce57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3482) (rho 3483) (rho 3484) (rho 3485) (rho 3486) (rho 3487) (rho 3488)
      (by simpa [acc57] using hacc)
      (by linear_combination r3990)
      (by linear_combination r3991)
      (by linear_combination r3992)
      (by linear_combination r3993)
      (by linear_combination r3994)
    simpa [acc57, shiftOnce57] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc57 rho) (shiftOnce57 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc57 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce57 rho) (shifted57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3487) (rho 3488) (rho 3489) (rho 3490) (rho 3491) (rho 3492) (rho 3493)
      (by simpa [shiftOnce57] using hshift1On)
      (by linear_combination r3995)
      (by linear_combination r3996)
      (by linear_combination r3997)
      (by linear_combination r3998)
      (by linear_combination r3999)
    simpa [shiftOnce57, shifted57] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce57 rho) (shifted57 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce57 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1117) (rho 1116)
      (base rho) (twice rho) (triple rho) (digit57 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1117) (rho 1116)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3495 + rho 3496, (1 : F) + rho 3498 + rho 3499⟩ := by
      constructor
      · refine ⟨(rho 3494 + (rho 2216) - (0)), rho 3495, ?_, ?_, ?_⟩
        · linear_combination r4000
        · linear_combination r4001
        · linear_combination r4002
      · refine ⟨(rho 3497 + (rho 2217) - ((1 : F))), rho 3498, ?_, ?_, ?_⟩
        · linear_combination r4003
        · linear_combination r4004
        · linear_combination r4005
    simpa [base, twice, triple, digit57] using hraw
  have hhigh : rho 1117 =
      Bool.toZMod bits[134]! := by
    simpa only using rho_bit_of_map rho bits hbits 134 (by decide +kernel)
  have hlow : rho 1116 =
      Bool.toZMod bits[133]! := by
    simpa only using rho_bit_of_map rho bits hbits 133 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[134]! bits[133]! (base rho) (twice rho) (triple rho)
    (digit57 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit57 rho) := by
    rw [hdigit]
    cases bits[134]! <;> cases bits[133]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted57 rho) (digit57 rho) (acc58 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3492) (rho 3493) (rho 3495 + rho 3496) ((1 : F) + rho 3498 + rho 3499)
      (rho 3500) (rho 3501) (rho 3502) (rho 3503) (rho 3504) (rho 3505)
      (by simpa [shifted57] using hshift2On)
      (by simpa [digit57] using hdigitOn)
      (by linear_combination r4006)
      (by linear_combination r4007)
      (by linear_combination r4008)
      (by linear_combination r4009)
      (by linear_combination r4010)
      (by linear_combination r4011)
    simpa [shifted57, digit57, acc58] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc58 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted57 rho) (digit57 rho) (acc58 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted57 rho) (digit57 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1117) (rho 1116)
      (base rho) (twice rho) (triple rho) (acc57 rho)
      (acc58 rho) :=
    ⟨shiftOnce57 rho, shifted57 rho, digit57 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window58 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc58 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[132]! (scalarBits rho)[131]!
        (base rho) (twice rho) (triple rho) (acc58 rho)
        (acc59 rho) ∧
      EdwardsBridge.onCurve (acc59 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4012 at r4012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4013 at r4013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4014 at r4014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4015 at r4015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4016 at r4016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4017 at r4017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4018 at r4018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4019 at r4019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4020 at r4020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4021 at r4021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4022 at r4022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4023 at r4023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4024 at r4024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4025 at r4025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4026 at r4026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4027 at r4027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4028 at r4028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4029 at r4029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4030 at r4030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4031 at r4031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4032 at r4032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4033 at r4033
  have hshift1 : EdwardsBridge.doubleSpec (acc58 rho) (shiftOnce58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3504) (rho 3505) (rho 3506) (rho 3507) (rho 3508) (rho 3509) (rho 3510)
      (by simpa [acc58] using hacc)
      (by linear_combination r4012)
      (by linear_combination r4013)
      (by linear_combination r4014)
      (by linear_combination r4015)
      (by linear_combination r4016)
    simpa [acc58, shiftOnce58] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc58 rho) (shiftOnce58 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc58 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce58 rho) (shifted58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3509) (rho 3510) (rho 3511) (rho 3512) (rho 3513) (rho 3514) (rho 3515)
      (by simpa [shiftOnce58] using hshift1On)
      (by linear_combination r4017)
      (by linear_combination r4018)
      (by linear_combination r4019)
      (by linear_combination r4020)
      (by linear_combination r4021)
    simpa [shiftOnce58, shifted58] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce58 rho) (shifted58 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce58 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1115) (rho 1114)
      (base rho) (twice rho) (triple rho) (digit58 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1115) (rho 1114)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3517 + rho 3518, (1 : F) + rho 3520 + rho 3521⟩ := by
      constructor
      · refine ⟨(rho 3516 + (rho 2216) - (0)), rho 3517, ?_, ?_, ?_⟩
        · linear_combination r4022
        · linear_combination r4023
        · linear_combination r4024
      · refine ⟨(rho 3519 + (rho 2217) - ((1 : F))), rho 3520, ?_, ?_, ?_⟩
        · linear_combination r4025
        · linear_combination r4026
        · linear_combination r4027
    simpa [base, twice, triple, digit58] using hraw
  have hhigh : rho 1115 =
      Bool.toZMod bits[132]! := by
    simpa only using rho_bit_of_map rho bits hbits 132 (by decide +kernel)
  have hlow : rho 1114 =
      Bool.toZMod bits[131]! := by
    simpa only using rho_bit_of_map rho bits hbits 131 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[132]! bits[131]! (base rho) (twice rho) (triple rho)
    (digit58 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit58 rho) := by
    rw [hdigit]
    cases bits[132]! <;> cases bits[131]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted58 rho) (digit58 rho) (acc59 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3514) (rho 3515) (rho 3517 + rho 3518) ((1 : F) + rho 3520 + rho 3521)
      (rho 3522) (rho 3523) (rho 3524) (rho 3525) (rho 3526) (rho 3527)
      (by simpa [shifted58] using hshift2On)
      (by simpa [digit58] using hdigitOn)
      (by linear_combination r4028)
      (by linear_combination r4029)
      (by linear_combination r4030)
      (by linear_combination r4031)
      (by linear_combination r4032)
      (by linear_combination r4033)
    simpa [shifted58, digit58, acc59] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc59 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted58 rho) (digit58 rho) (acc59 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted58 rho) (digit58 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1115) (rho 1114)
      (base rho) (twice rho) (triple rho) (acc58 rho)
      (acc59 rho) :=
    ⟨shiftOnce58 rho, shifted58 rho, digit58 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window59 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc59 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[130]! (scalarBits rho)[129]!
        (base rho) (twice rho) (triple rho) (acc59 rho)
        (acc60 rho) ∧
      EdwardsBridge.onCurve (acc60 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4034 at r4034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4035 at r4035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4036 at r4036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4037 at r4037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4038 at r4038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4039 at r4039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4040 at r4040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4041 at r4041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4042 at r4042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4043 at r4043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4044 at r4044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4045 at r4045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4046 at r4046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4047 at r4047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4048 at r4048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4049 at r4049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4050 at r4050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4051 at r4051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4052 at r4052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4053 at r4053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4054 at r4054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4055 at r4055
  have hshift1 : EdwardsBridge.doubleSpec (acc59 rho) (shiftOnce59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3526) (rho 3527) (rho 3528) (rho 3529) (rho 3530) (rho 3531) (rho 3532)
      (by simpa [acc59] using hacc)
      (by linear_combination r4034)
      (by linear_combination r4035)
      (by linear_combination r4036)
      (by linear_combination r4037)
      (by linear_combination r4038)
    simpa [acc59, shiftOnce59] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc59 rho) (shiftOnce59 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc59 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce59 rho) (shifted59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3531) (rho 3532) (rho 3533) (rho 3534) (rho 3535) (rho 3536) (rho 3537)
      (by simpa [shiftOnce59] using hshift1On)
      (by linear_combination r4039)
      (by linear_combination r4040)
      (by linear_combination r4041)
      (by linear_combination r4042)
      (by linear_combination r4043)
    simpa [shiftOnce59, shifted59] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce59 rho) (shifted59 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce59 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1113) (rho 1112)
      (base rho) (twice rho) (triple rho) (digit59 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1113) (rho 1112)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3539 + rho 3540, (1 : F) + rho 3542 + rho 3543⟩ := by
      constructor
      · refine ⟨(rho 3538 + (rho 2216) - (0)), rho 3539, ?_, ?_, ?_⟩
        · linear_combination r4044
        · linear_combination r4045
        · linear_combination r4046
      · refine ⟨(rho 3541 + (rho 2217) - ((1 : F))), rho 3542, ?_, ?_, ?_⟩
        · linear_combination r4047
        · linear_combination r4048
        · linear_combination r4049
    simpa [base, twice, triple, digit59] using hraw
  have hhigh : rho 1113 =
      Bool.toZMod bits[130]! := by
    simpa only using rho_bit_of_map rho bits hbits 130 (by decide +kernel)
  have hlow : rho 1112 =
      Bool.toZMod bits[129]! := by
    simpa only using rho_bit_of_map rho bits hbits 129 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[130]! bits[129]! (base rho) (twice rho) (triple rho)
    (digit59 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit59 rho) := by
    rw [hdigit]
    cases bits[130]! <;> cases bits[129]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted59 rho) (digit59 rho) (acc60 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3536) (rho 3537) (rho 3539 + rho 3540) ((1 : F) + rho 3542 + rho 3543)
      (rho 3544) (rho 3545) (rho 3546) (rho 3547) (rho 3548) (rho 3549)
      (by simpa [shifted59] using hshift2On)
      (by simpa [digit59] using hdigitOn)
      (by linear_combination r4050)
      (by linear_combination r4051)
      (by linear_combination r4052)
      (by linear_combination r4053)
      (by linear_combination r4054)
      (by linear_combination r4055)
    simpa [shifted59, digit59, acc60] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc60 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted59 rho) (digit59 rho) (acc60 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted59 rho) (digit59 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1113) (rho 1112)
      (base rho) (twice rho) (triple rho) (acc59 rho)
      (acc60 rho) :=
    ⟨shiftOnce59 rho, shifted59 rho, digit59 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
