import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window60 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4056 at r4056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4057 at r4057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4058 at r4058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4059 at r4059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4060 at r4060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4061 at r4061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4062 at r4062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4063 at r4063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4064 at r4064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4065 at r4065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4066 at r4066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4067 at r4067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4068 at r4068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4069 at r4069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4070 at r4070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4071 at r4071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4072 at r4072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4073 at r4073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4074 at r4074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4075 at r4075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4076 at r4076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4077 at r4077
  have hshift1 : EdwardsBridge.doubleSpec (acc60 rho) (shiftOnce60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3548) (rho 3549) (rho 3550) (rho 3551) (rho 3552) (rho 3553) (rho 3554)
      (by simpa [acc60] using hacc)
      (by linear_combination r4056)
      (by linear_combination r4057)
      (by linear_combination r4058)
      (by linear_combination r4059)
      (by linear_combination r4060)
    simpa [acc60, shiftOnce60] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc60 rho) (shiftOnce60 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc60 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce60 rho) (shifted60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3553) (rho 3554) (rho 3555) (rho 3556) (rho 3557) (rho 3558) (rho 3559)
      (by simpa [shiftOnce60] using hshift1On)
      (by linear_combination r4061)
      (by linear_combination r4062)
      (by linear_combination r4063)
      (by linear_combination r4064)
      (by linear_combination r4065)
    simpa [shiftOnce60, shifted60] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce60 rho) (shifted60 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce60 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1111) (rho 1110)
      (base rho) (twice rho) (triple rho) (digit60 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1111) (rho 1110)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3561 + rho 3562, (1 : F) + rho 3564 + rho 3565⟩ := by
      constructor
      · refine ⟨(rho 3560 + (rho 2216) - (0)), rho 3561, ?_, ?_, ?_⟩
        · linear_combination r4066
        · linear_combination r4067
        · linear_combination r4068
      · refine ⟨(rho 3563 + (rho 2217) - ((1 : F))), rho 3564, ?_, ?_, ?_⟩
        · linear_combination r4069
        · linear_combination r4070
        · linear_combination r4071
    simpa [base, twice, triple, digit60] using hraw
  have hhigh : rho 1111 =
      Bool.toZMod bits[128]! := by
    simpa only using rho_bit_of_map rho bits hbits 128 (by decide +kernel)
  have hlow : rho 1110 =
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
      (rho 3558) (rho 3559) (rho 3561 + rho 3562) ((1 : F) + rho 3564 + rho 3565)
      (rho 3566) (rho 3567) (rho 3568) (rho 3569) (rho 3570) (rho 3571)
      (by simpa [shifted60] using hshift2On)
      (by simpa [digit60] using hdigitOn)
      (by linear_combination r4072)
      (by linear_combination r4073)
      (by linear_combination r4074)
      (by linear_combination r4075)
      (by linear_combination r4076)
      (by linear_combination r4077)
    simpa [shifted60, digit60, acc61] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc61 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted60 rho) (digit60 rho) (acc61 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted60 rho) (digit60 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1111) (rho 1110)
      (base rho) (twice rho) (triple rho) (acc60 rho)
      (acc61 rho) :=
    ⟨shiftOnce60 rho, shifted60 rho, digit60 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window61 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4078, r4079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4078 at r4078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4079 at r4079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4080 at r4080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4081 at r4081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4082 at r4082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4083 at r4083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4084 at r4084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4085 at r4085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4086 at r4086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4087 at r4087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4088 at r4088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4089 at r4089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4090 at r4090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4091 at r4091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4092 at r4092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4093 at r4093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4094 at r4094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4095 at r4095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4096 at r4096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4097 at r4097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4098 at r4098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4099 at r4099
  have hshift1 : EdwardsBridge.doubleSpec (acc61 rho) (shiftOnce61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3570) (rho 3571) (rho 3572) (rho 3573) (rho 3574) (rho 3575) (rho 3576)
      (by simpa [acc61] using hacc)
      (by linear_combination r4078)
      (by linear_combination r4079)
      (by linear_combination r4080)
      (by linear_combination r4081)
      (by linear_combination r4082)
    simpa [acc61, shiftOnce61] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc61 rho) (shiftOnce61 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc61 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce61 rho) (shifted61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3575) (rho 3576) (rho 3577) (rho 3578) (rho 3579) (rho 3580) (rho 3581)
      (by simpa [shiftOnce61] using hshift1On)
      (by linear_combination r4083)
      (by linear_combination r4084)
      (by linear_combination r4085)
      (by linear_combination r4086)
      (by linear_combination r4087)
    simpa [shiftOnce61, shifted61] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce61 rho) (shifted61 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce61 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1109) (rho 1108)
      (base rho) (twice rho) (triple rho) (digit61 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1109) (rho 1108)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3583 + rho 3584, (1 : F) + rho 3586 + rho 3587⟩ := by
      constructor
      · refine ⟨(rho 3582 + (rho 2216) - (0)), rho 3583, ?_, ?_, ?_⟩
        · linear_combination r4088
        · linear_combination r4089
        · linear_combination r4090
      · refine ⟨(rho 3585 + (rho 2217) - ((1 : F))), rho 3586, ?_, ?_, ?_⟩
        · linear_combination r4091
        · linear_combination r4092
        · linear_combination r4093
    simpa [base, twice, triple, digit61] using hraw
  have hhigh : rho 1109 =
      Bool.toZMod bits[126]! := by
    simpa only using rho_bit_of_map rho bits hbits 126 (by decide +kernel)
  have hlow : rho 1108 =
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
      (rho 3580) (rho 3581) (rho 3583 + rho 3584) ((1 : F) + rho 3586 + rho 3587)
      (rho 3588) (rho 3589) (rho 3590) (rho 3591) (rho 3592) (rho 3593)
      (by simpa [shifted61] using hshift2On)
      (by simpa [digit61] using hdigitOn)
      (by linear_combination r4094)
      (by linear_combination r4095)
      (by linear_combination r4096)
      (by linear_combination r4097)
      (by linear_combination r4098)
      (by linear_combination r4099)
    simpa [shifted61, digit61, acc62] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc62 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted61 rho) (digit61 rho) (acc62 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted61 rho) (digit61 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1109) (rho 1108)
      (base rho) (twice rho) (triple rho) (acc61 rho)
      (acc62 rho) :=
    ⟨shiftOnce61 rho, shifted61 rho, digit61 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window62 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4100 at r4100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4101 at r4101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4102 at r4102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4103 at r4103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4104 at r4104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4105 at r4105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4106 at r4106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4107 at r4107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4108 at r4108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4109 at r4109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4110 at r4110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4111 at r4111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4112 at r4112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4113 at r4113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4114 at r4114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4115 at r4115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4116 at r4116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4117 at r4117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4118 at r4118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4119 at r4119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4120 at r4120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4121 at r4121
  have hshift1 : EdwardsBridge.doubleSpec (acc62 rho) (shiftOnce62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3592) (rho 3593) (rho 3594) (rho 3595) (rho 3596) (rho 3597) (rho 3598)
      (by simpa [acc62] using hacc)
      (by linear_combination r4100)
      (by linear_combination r4101)
      (by linear_combination r4102)
      (by linear_combination r4103)
      (by linear_combination r4104)
    simpa [acc62, shiftOnce62] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc62 rho) (shiftOnce62 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc62 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce62 rho) (shifted62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3597) (rho 3598) (rho 3599) (rho 3600) (rho 3601) (rho 3602) (rho 3603)
      (by simpa [shiftOnce62] using hshift1On)
      (by linear_combination r4105)
      (by linear_combination r4106)
      (by linear_combination r4107)
      (by linear_combination r4108)
      (by linear_combination r4109)
    simpa [shiftOnce62, shifted62] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce62 rho) (shifted62 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce62 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1107) (rho 1106)
      (base rho) (twice rho) (triple rho) (digit62 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1107) (rho 1106)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3605 + rho 3606, (1 : F) + rho 3608 + rho 3609⟩ := by
      constructor
      · refine ⟨(rho 3604 + (rho 2216) - (0)), rho 3605, ?_, ?_, ?_⟩
        · linear_combination r4110
        · linear_combination r4111
        · linear_combination r4112
      · refine ⟨(rho 3607 + (rho 2217) - ((1 : F))), rho 3608, ?_, ?_, ?_⟩
        · linear_combination r4113
        · linear_combination r4114
        · linear_combination r4115
    simpa [base, twice, triple, digit62] using hraw
  have hhigh : rho 1107 =
      Bool.toZMod bits[124]! := by
    simpa only using rho_bit_of_map rho bits hbits 124 (by decide +kernel)
  have hlow : rho 1106 =
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
      (rho 3602) (rho 3603) (rho 3605 + rho 3606) ((1 : F) + rho 3608 + rho 3609)
      (rho 3610) (rho 3611) (rho 3612) (rho 3613) (rho 3614) (rho 3615)
      (by simpa [shifted62] using hshift2On)
      (by simpa [digit62] using hdigitOn)
      (by linear_combination r4116)
      (by linear_combination r4117)
      (by linear_combination r4118)
      (by linear_combination r4119)
      (by linear_combination r4120)
      (by linear_combination r4121)
    simpa [shifted62, digit62, acc63] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc63 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted62 rho) (digit62 rho) (acc63 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted62 rho) (digit62 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1107) (rho 1106)
      (base rho) (twice rho) (triple rho) (acc62 rho)
      (acc63 rho) :=
    ⟨shiftOnce62 rho, shifted62 rho, digit62 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window63 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4122 at r4122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4123 at r4123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4124 at r4124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4125 at r4125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4126 at r4126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4127 at r4127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4128 at r4128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4129 at r4129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4130 at r4130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4131 at r4131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4132 at r4132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4133 at r4133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4134 at r4134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4135 at r4135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4136 at r4136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4137 at r4137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4138 at r4138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4139 at r4139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4140 at r4140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4141 at r4141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4142 at r4142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4143 at r4143
  have hshift1 : EdwardsBridge.doubleSpec (acc63 rho) (shiftOnce63 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3614) (rho 3615) (rho 3616) (rho 3617) (rho 3618) (rho 3619) (rho 3620)
      (by simpa [acc63] using hacc)
      (by linear_combination r4122)
      (by linear_combination r4123)
      (by linear_combination r4124)
      (by linear_combination r4125)
      (by linear_combination r4126)
    simpa [acc63, shiftOnce63] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce63 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc63 rho) (shiftOnce63 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc63 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce63 rho) (shifted63 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3619) (rho 3620) (rho 3621) (rho 3622) (rho 3623) (rho 3624) (rho 3625)
      (by simpa [shiftOnce63] using hshift1On)
      (by linear_combination r4127)
      (by linear_combination r4128)
      (by linear_combination r4129)
      (by linear_combination r4130)
      (by linear_combination r4131)
    simpa [shiftOnce63, shifted63] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted63 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce63 rho) (shifted63 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce63 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1105) (rho 1104)
      (base rho) (twice rho) (triple rho) (digit63 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1105) (rho 1104)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3627 + rho 3628, (1 : F) + rho 3630 + rho 3631⟩ := by
      constructor
      · refine ⟨(rho 3626 + (rho 2216) - (0)), rho 3627, ?_, ?_, ?_⟩
        · linear_combination r4132
        · linear_combination r4133
        · linear_combination r4134
      · refine ⟨(rho 3629 + (rho 2217) - ((1 : F))), rho 3630, ?_, ?_, ?_⟩
        · linear_combination r4135
        · linear_combination r4136
        · linear_combination r4137
    simpa [base, twice, triple, digit63] using hraw
  have hhigh : rho 1105 =
      Bool.toZMod bits[122]! := by
    simpa only using rho_bit_of_map rho bits hbits 122 (by decide +kernel)
  have hlow : rho 1104 =
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
      (rho 3624) (rho 3625) (rho 3627 + rho 3628) ((1 : F) + rho 3630 + rho 3631)
      (rho 3632) (rho 3633) (rho 3634) (rho 3635) (rho 3636) (rho 3637)
      (by simpa [shifted63] using hshift2On)
      (by simpa [digit63] using hdigitOn)
      (by linear_combination r4138)
      (by linear_combination r4139)
      (by linear_combination r4140)
      (by linear_combination r4141)
      (by linear_combination r4142)
      (by linear_combination r4143)
    simpa [shifted63, digit63, acc64] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc64 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted63 rho) (digit63 rho) (acc64 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted63 rho) (digit63 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1105) (rho 1104)
      (base rho) (twice rho) (triple rho) (acc63 rho)
      (acc64 rho) :=
    ⟨shiftOnce63 rho, shifted63 rho, digit63 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window64 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4144 at r4144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4145 at r4145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4146 at r4146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4147 at r4147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4148 at r4148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4149 at r4149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4150 at r4150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4151 at r4151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4152 at r4152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4153 at r4153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4154 at r4154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4155 at r4155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4156 at r4156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4157 at r4157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4158 at r4158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4159 at r4159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4160 at r4160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4161 at r4161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4162 at r4162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4163 at r4163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4164 at r4164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4165 at r4165
  have hshift1 : EdwardsBridge.doubleSpec (acc64 rho) (shiftOnce64 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3636) (rho 3637) (rho 3638) (rho 3639) (rho 3640) (rho 3641) (rho 3642)
      (by simpa [acc64] using hacc)
      (by linear_combination r4144)
      (by linear_combination r4145)
      (by linear_combination r4146)
      (by linear_combination r4147)
      (by linear_combination r4148)
    simpa [acc64, shiftOnce64] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce64 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc64 rho) (shiftOnce64 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc64 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce64 rho) (shifted64 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3641) (rho 3642) (rho 3643) (rho 3644) (rho 3645) (rho 3646) (rho 3647)
      (by simpa [shiftOnce64] using hshift1On)
      (by linear_combination r4149)
      (by linear_combination r4150)
      (by linear_combination r4151)
      (by linear_combination r4152)
      (by linear_combination r4153)
    simpa [shiftOnce64, shifted64] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted64 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce64 rho) (shifted64 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce64 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1103) (rho 1102)
      (base rho) (twice rho) (triple rho) (digit64 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1103) (rho 1102)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3649 + rho 3650, (1 : F) + rho 3652 + rho 3653⟩ := by
      constructor
      · refine ⟨(rho 3648 + (rho 2216) - (0)), rho 3649, ?_, ?_, ?_⟩
        · linear_combination r4154
        · linear_combination r4155
        · linear_combination r4156
      · refine ⟨(rho 3651 + (rho 2217) - ((1 : F))), rho 3652, ?_, ?_, ?_⟩
        · linear_combination r4157
        · linear_combination r4158
        · linear_combination r4159
    simpa [base, twice, triple, digit64] using hraw
  have hhigh : rho 1103 =
      Bool.toZMod bits[120]! := by
    simpa only using rho_bit_of_map rho bits hbits 120 (by decide +kernel)
  have hlow : rho 1102 =
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
      (rho 3646) (rho 3647) (rho 3649 + rho 3650) ((1 : F) + rho 3652 + rho 3653)
      (rho 3654) (rho 3655) (rho 3656) (rho 3657) (rho 3658) (rho 3659)
      (by simpa [shifted64] using hshift2On)
      (by simpa [digit64] using hdigitOn)
      (by linear_combination r4160)
      (by linear_combination r4161)
      (by linear_combination r4162)
      (by linear_combination r4163)
      (by linear_combination r4164)
      (by linear_combination r4165)
    simpa [shifted64, digit64, acc65] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc65 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted64 rho) (digit64 rho) (acc65 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted64 rho) (digit64 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1103) (rho 1102)
      (base rho) (twice rho) (triple rho) (acc64 rho)
      (acc65 rho) :=
    ⟨shiftOnce64 rho, shifted64 rho, digit64 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window65 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  rcases p52 with ⟨_, _, _, _, _, _, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4166 at r4166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4167 at r4167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4168 at r4168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4169 at r4169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4170 at r4170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4171 at r4171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4172 at r4172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4173 at r4173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4174 at r4174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4175 at r4175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4176 at r4176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4177 at r4177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4178 at r4178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4179 at r4179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4180 at r4180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4181 at r4181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4182 at r4182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4183 at r4183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4184 at r4184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4185 at r4185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4186 at r4186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4187 at r4187
  have hshift1 : EdwardsBridge.doubleSpec (acc65 rho) (shiftOnce65 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3658) (rho 3659) (rho 3660) (rho 3661) (rho 3662) (rho 3663) (rho 3664)
      (by simpa [acc65] using hacc)
      (by linear_combination r4166)
      (by linear_combination r4167)
      (by linear_combination r4168)
      (by linear_combination r4169)
      (by linear_combination r4170)
    simpa [acc65, shiftOnce65] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce65 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc65 rho) (shiftOnce65 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc65 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce65 rho) (shifted65 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3663) (rho 3664) (rho 3665) (rho 3666) (rho 3667) (rho 3668) (rho 3669)
      (by simpa [shiftOnce65] using hshift1On)
      (by linear_combination r4171)
      (by linear_combination r4172)
      (by linear_combination r4173)
      (by linear_combination r4174)
      (by linear_combination r4175)
    simpa [shiftOnce65, shifted65] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted65 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce65 rho) (shifted65 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce65 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1101) (rho 1100)
      (base rho) (twice rho) (triple rho) (digit65 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1101) (rho 1100)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3671 + rho 3672, (1 : F) + rho 3674 + rho 3675⟩ := by
      constructor
      · refine ⟨(rho 3670 + (rho 2216) - (0)), rho 3671, ?_, ?_, ?_⟩
        · linear_combination r4176
        · linear_combination r4177
        · linear_combination r4178
      · refine ⟨(rho 3673 + (rho 2217) - ((1 : F))), rho 3674, ?_, ?_, ?_⟩
        · linear_combination r4179
        · linear_combination r4180
        · linear_combination r4181
    simpa [base, twice, triple, digit65] using hraw
  have hhigh : rho 1101 =
      Bool.toZMod bits[118]! := by
    simpa only using rho_bit_of_map rho bits hbits 118 (by decide +kernel)
  have hlow : rho 1100 =
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
      (rho 3668) (rho 3669) (rho 3671 + rho 3672) ((1 : F) + rho 3674 + rho 3675)
      (rho 3676) (rho 3677) (rho 3678) (rho 3679) (rho 3680) (rho 3681)
      (by simpa [shifted65] using hshift2On)
      (by simpa [digit65] using hdigitOn)
      (by linear_combination r4182)
      (by linear_combination r4183)
      (by linear_combination r4184)
      (by linear_combination r4185)
      (by linear_combination r4186)
      (by linear_combination r4187)
    simpa [shifted65, digit65, acc66] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc66 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted65 rho) (digit65 rho) (acc66 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted65 rho) (digit65 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1101) (rho 1100)
      (base rho) (twice rho) (triple rho) (acc65 rho)
      (acc66 rho) :=
    ⟨shiftOnce65 rho, shifted65 rho, digit65 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
