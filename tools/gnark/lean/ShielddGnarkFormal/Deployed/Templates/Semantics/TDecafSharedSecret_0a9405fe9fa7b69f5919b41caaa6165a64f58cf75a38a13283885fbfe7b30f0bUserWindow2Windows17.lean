import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window102 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc102 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[44]! (scalarBits rho)[43]!
        (base rho) (twice rho) (triple rho) (acc102 rho)
        (acc103 rho) ∧
      EdwardsBridge.onCurve (acc103 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4070 at r4070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4071 at r4071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4072 at r4072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4073 at r4073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4074 at r4074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4075 at r4075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4076 at r4076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4077 at r4077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4078 at r4078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4079 at r4079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4080 at r4080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4081 at r4081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4082 at r4082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4083 at r4083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4084 at r4084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4085 at r4085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4086 at r4086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4087 at r4087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4088 at r4088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4089 at r4089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4090 at r4090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4091 at r4091
  have hshift1 : EdwardsBridge.doubleSpec (acc102 rho) (shiftOnce102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4074) (rho 4075) (rho 4076) (rho 4077) (rho 4078) (rho 4079) (rho 4080)
      (by simpa [acc102] using hacc)
      (by linear_combination r4070)
      (by linear_combination r4071)
      (by linear_combination r4072)
      (by linear_combination r4073)
      (by linear_combination r4074)
    simpa [acc102, shiftOnce102] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc102 rho) (shiftOnce102 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc102 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce102 rho) (shifted102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4079) (rho 4080) (rho 4081) (rho 4082) (rho 4083) (rho 4084) (rho 4085)
      (by simpa [shiftOnce102] using hshift1On)
      (by linear_combination r4075)
      (by linear_combination r4076)
      (by linear_combination r4077)
      (by linear_combination r4078)
      (by linear_combination r4079)
    simpa [shiftOnce102, shifted102] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce102 rho) (shifted102 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce102 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 46) (rho 45)
      (base rho) (twice rho) (triple rho) (digit102 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 46) (rho 45)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4087 + rho 4088, (1 : F) + rho 4090 + rho 4091⟩ := by
      constructor
      · refine ⟨(rho 4086 + (rho 1818) - (0)), rho 4087, ?_, ?_, ?_⟩
        · linear_combination r4080
        · linear_combination r4081
        · linear_combination r4082
      · refine ⟨(rho 4089 + (rho 1819) - ((1 : F))), rho 4090, ?_, ?_, ?_⟩
        · linear_combination r4083
        · linear_combination r4084
        · linear_combination r4085
    simpa [base, twice, triple, digit102] using hraw
  have hhigh : rho 46 =
      Bool.toZMod bits[44]! := by
    simpa only using rho_bit_of_map rho bits hbits 44 (by decide +kernel)
  have hlow : rho 45 =
      Bool.toZMod bits[43]! := by
    simpa only using rho_bit_of_map rho bits hbits 43 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[44]! bits[43]! (base rho) (twice rho) (triple rho)
    (digit102 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit102 rho) := by
    rw [hdigit]
    cases bits[44]! <;> cases bits[43]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted102 rho) (digit102 rho) (acc103 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4084) (rho 4085) (rho 4087 + rho 4088) ((1 : F) + rho 4090 + rho 4091)
      (rho 4092) (rho 4093) (rho 4094) (rho 4095) (rho 4096) (rho 4097)
      (by simpa [shifted102] using hshift2On)
      (by simpa [digit102] using hdigitOn)
      (by linear_combination r4086)
      (by linear_combination r4087)
      (by linear_combination r4088)
      (by linear_combination r4089)
      (by linear_combination r4090)
      (by linear_combination r4091)
    simpa [shifted102, digit102, acc103] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc103 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted102 rho) (digit102 rho) (acc103 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted102 rho) (digit102 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 46) (rho 45)
      (base rho) (twice rho) (triple rho) (acc102 rho)
      (acc103 rho) :=
    ⟨shiftOnce102 rho, shifted102 rho, digit102 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window103 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc103 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[42]! (scalarBits rho)[41]!
        (base rho) (twice rho) (triple rho) (acc103 rho)
        (acc104 rho) ∧
      EdwardsBridge.onCurve (acc104 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4092 at r4092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4093 at r4093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4094 at r4094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4095 at r4095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4096 at r4096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4097 at r4097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4098 at r4098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4099 at r4099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4100 at r4100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4101 at r4101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4102 at r4102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4103 at r4103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4104 at r4104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4105 at r4105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4106 at r4106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4107 at r4107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4108 at r4108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4109 at r4109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4110 at r4110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4111 at r4111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4112 at r4112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4113 at r4113
  have hshift1 : EdwardsBridge.doubleSpec (acc103 rho) (shiftOnce103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4096) (rho 4097) (rho 4098) (rho 4099) (rho 4100) (rho 4101) (rho 4102)
      (by simpa [acc103] using hacc)
      (by linear_combination r4092)
      (by linear_combination r4093)
      (by linear_combination r4094)
      (by linear_combination r4095)
      (by linear_combination r4096)
    simpa [acc103, shiftOnce103] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc103 rho) (shiftOnce103 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc103 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce103 rho) (shifted103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4101) (rho 4102) (rho 4103) (rho 4104) (rho 4105) (rho 4106) (rho 4107)
      (by simpa [shiftOnce103] using hshift1On)
      (by linear_combination r4097)
      (by linear_combination r4098)
      (by linear_combination r4099)
      (by linear_combination r4100)
      (by linear_combination r4101)
    simpa [shiftOnce103, shifted103] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce103 rho) (shifted103 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce103 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 44) (rho 43)
      (base rho) (twice rho) (triple rho) (digit103 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 44) (rho 43)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4109 + rho 4110, (1 : F) + rho 4112 + rho 4113⟩ := by
      constructor
      · refine ⟨(rho 4108 + (rho 1818) - (0)), rho 4109, ?_, ?_, ?_⟩
        · linear_combination r4102
        · linear_combination r4103
        · linear_combination r4104
      · refine ⟨(rho 4111 + (rho 1819) - ((1 : F))), rho 4112, ?_, ?_, ?_⟩
        · linear_combination r4105
        · linear_combination r4106
        · linear_combination r4107
    simpa [base, twice, triple, digit103] using hraw
  have hhigh : rho 44 =
      Bool.toZMod bits[42]! := by
    simpa only using rho_bit_of_map rho bits hbits 42 (by decide +kernel)
  have hlow : rho 43 =
      Bool.toZMod bits[41]! := by
    simpa only using rho_bit_of_map rho bits hbits 41 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[42]! bits[41]! (base rho) (twice rho) (triple rho)
    (digit103 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit103 rho) := by
    rw [hdigit]
    cases bits[42]! <;> cases bits[41]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted103 rho) (digit103 rho) (acc104 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4106) (rho 4107) (rho 4109 + rho 4110) ((1 : F) + rho 4112 + rho 4113)
      (rho 4114) (rho 4115) (rho 4116) (rho 4117) (rho 4118) (rho 4119)
      (by simpa [shifted103] using hshift2On)
      (by simpa [digit103] using hdigitOn)
      (by linear_combination r4108)
      (by linear_combination r4109)
      (by linear_combination r4110)
      (by linear_combination r4111)
      (by linear_combination r4112)
      (by linear_combination r4113)
    simpa [shifted103, digit103, acc104] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc104 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted103 rho) (digit103 rho) (acc104 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted103 rho) (digit103 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 44) (rho 43)
      (base rho) (twice rho) (triple rho) (acc103 rho)
      (acc104 rho) :=
    ⟨shiftOnce103 rho, shifted103 rho, digit103 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window104 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc104 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[40]! (scalarBits rho)[39]!
        (base rho) (twice rho) (triple rho) (acc104 rho)
        (acc105 rho) ∧
      EdwardsBridge.onCurve (acc105 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, r4135, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4114 at r4114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4115 at r4115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4116 at r4116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4117 at r4117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4118 at r4118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4119 at r4119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4120 at r4120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4121 at r4121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4122 at r4122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4123 at r4123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4124 at r4124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4125 at r4125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4126 at r4126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4127 at r4127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4128 at r4128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4129 at r4129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4130 at r4130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4131 at r4131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4132 at r4132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4133 at r4133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4134 at r4134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4135 at r4135
  have hshift1 : EdwardsBridge.doubleSpec (acc104 rho) (shiftOnce104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4118) (rho 4119) (rho 4120) (rho 4121) (rho 4122) (rho 4123) (rho 4124)
      (by simpa [acc104] using hacc)
      (by linear_combination r4114)
      (by linear_combination r4115)
      (by linear_combination r4116)
      (by linear_combination r4117)
      (by linear_combination r4118)
    simpa [acc104, shiftOnce104] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc104 rho) (shiftOnce104 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc104 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce104 rho) (shifted104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4123) (rho 4124) (rho 4125) (rho 4126) (rho 4127) (rho 4128) (rho 4129)
      (by simpa [shiftOnce104] using hshift1On)
      (by linear_combination r4119)
      (by linear_combination r4120)
      (by linear_combination r4121)
      (by linear_combination r4122)
      (by linear_combination r4123)
    simpa [shiftOnce104, shifted104] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce104 rho) (shifted104 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce104 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 42) (rho 41)
      (base rho) (twice rho) (triple rho) (digit104 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 42) (rho 41)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4131 + rho 4132, (1 : F) + rho 4134 + rho 4135⟩ := by
      constructor
      · refine ⟨(rho 4130 + (rho 1818) - (0)), rho 4131, ?_, ?_, ?_⟩
        · linear_combination r4124
        · linear_combination r4125
        · linear_combination r4126
      · refine ⟨(rho 4133 + (rho 1819) - ((1 : F))), rho 4134, ?_, ?_, ?_⟩
        · linear_combination r4127
        · linear_combination r4128
        · linear_combination r4129
    simpa [base, twice, triple, digit104] using hraw
  have hhigh : rho 42 =
      Bool.toZMod bits[40]! := by
    simpa only using rho_bit_of_map rho bits hbits 40 (by decide +kernel)
  have hlow : rho 41 =
      Bool.toZMod bits[39]! := by
    simpa only using rho_bit_of_map rho bits hbits 39 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[40]! bits[39]! (base rho) (twice rho) (triple rho)
    (digit104 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit104 rho) := by
    rw [hdigit]
    cases bits[40]! <;> cases bits[39]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted104 rho) (digit104 rho) (acc105 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4128) (rho 4129) (rho 4131 + rho 4132) ((1 : F) + rho 4134 + rho 4135)
      (rho 4136) (rho 4137) (rho 4138) (rho 4139) (rho 4140) (rho 4141)
      (by simpa [shifted104] using hshift2On)
      (by simpa [digit104] using hdigitOn)
      (by linear_combination r4130)
      (by linear_combination r4131)
      (by linear_combination r4132)
      (by linear_combination r4133)
      (by linear_combination r4134)
      (by linear_combination r4135)
    simpa [shifted104, digit104, acc105] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc105 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted104 rho) (digit104 rho) (acc105 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted104 rho) (digit104 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 42) (rho 41)
      (base rho) (twice rho) (triple rho) (acc104 rho)
      (acc105 rho) :=
    ⟨shiftOnce104 rho, shifted104 rho, digit104 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window105 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc105 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[38]! (scalarBits rho)[37]!
        (base rho) (twice rho) (triple rho) (acc105 rho)
        (acc106 rho) ∧
      EdwardsBridge.onCurve (acc106 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4136 at r4136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4137 at r4137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4138 at r4138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4139 at r4139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4140 at r4140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4141 at r4141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4142 at r4142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4143 at r4143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4144 at r4144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4145 at r4145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4146 at r4146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4147 at r4147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4148 at r4148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4149 at r4149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4150 at r4150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4151 at r4151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4152 at r4152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4153 at r4153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4154 at r4154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4155 at r4155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4156 at r4156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4157 at r4157
  have hshift1 : EdwardsBridge.doubleSpec (acc105 rho) (shiftOnce105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4140) (rho 4141) (rho 4142) (rho 4143) (rho 4144) (rho 4145) (rho 4146)
      (by simpa [acc105] using hacc)
      (by linear_combination r4136)
      (by linear_combination r4137)
      (by linear_combination r4138)
      (by linear_combination r4139)
      (by linear_combination r4140)
    simpa [acc105, shiftOnce105] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc105 rho) (shiftOnce105 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc105 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce105 rho) (shifted105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4145) (rho 4146) (rho 4147) (rho 4148) (rho 4149) (rho 4150) (rho 4151)
      (by simpa [shiftOnce105] using hshift1On)
      (by linear_combination r4141)
      (by linear_combination r4142)
      (by linear_combination r4143)
      (by linear_combination r4144)
      (by linear_combination r4145)
    simpa [shiftOnce105, shifted105] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce105 rho) (shifted105 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce105 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 40) (rho 39)
      (base rho) (twice rho) (triple rho) (digit105 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 40) (rho 39)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4153 + rho 4154, (1 : F) + rho 4156 + rho 4157⟩ := by
      constructor
      · refine ⟨(rho 4152 + (rho 1818) - (0)), rho 4153, ?_, ?_, ?_⟩
        · linear_combination r4146
        · linear_combination r4147
        · linear_combination r4148
      · refine ⟨(rho 4155 + (rho 1819) - ((1 : F))), rho 4156, ?_, ?_, ?_⟩
        · linear_combination r4149
        · linear_combination r4150
        · linear_combination r4151
    simpa [base, twice, triple, digit105] using hraw
  have hhigh : rho 40 =
      Bool.toZMod bits[38]! := by
    simpa only using rho_bit_of_map rho bits hbits 38 (by decide +kernel)
  have hlow : rho 39 =
      Bool.toZMod bits[37]! := by
    simpa only using rho_bit_of_map rho bits hbits 37 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[38]! bits[37]! (base rho) (twice rho) (triple rho)
    (digit105 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit105 rho) := by
    rw [hdigit]
    cases bits[38]! <;> cases bits[37]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted105 rho) (digit105 rho) (acc106 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4150) (rho 4151) (rho 4153 + rho 4154) ((1 : F) + rho 4156 + rho 4157)
      (rho 4158) (rho 4159) (rho 4160) (rho 4161) (rho 4162) (rho 4163)
      (by simpa [shifted105] using hshift2On)
      (by simpa [digit105] using hdigitOn)
      (by linear_combination r4152)
      (by linear_combination r4153)
      (by linear_combination r4154)
      (by linear_combination r4155)
      (by linear_combination r4156)
      (by linear_combination r4157)
    simpa [shifted105, digit105, acc106] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc106 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted105 rho) (digit105 rho) (acc106 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted105 rho) (digit105 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 40) (rho 39)
      (base rho) (twice rho) (triple rho) (acc105 rho)
      (acc106 rho) :=
    ⟨shiftOnce105 rho, shifted105 rho, digit105 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window106 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc106 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[36]! (scalarBits rho)[35]!
        (base rho) (twice rho) (triple rho) (acc106 rho)
        (acc107 rho) ∧
      EdwardsBridge.onCurve (acc107 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4158, r4159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4158 at r4158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4159 at r4159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4160 at r4160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4161 at r4161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4162 at r4162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4163 at r4163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4164 at r4164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4165 at r4165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4166 at r4166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4167 at r4167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4168 at r4168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4169 at r4169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4170 at r4170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4171 at r4171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4172 at r4172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4173 at r4173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4174 at r4174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4175 at r4175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4176 at r4176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4177 at r4177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4178 at r4178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4179 at r4179
  have hshift1 : EdwardsBridge.doubleSpec (acc106 rho) (shiftOnce106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4162) (rho 4163) (rho 4164) (rho 4165) (rho 4166) (rho 4167) (rho 4168)
      (by simpa [acc106] using hacc)
      (by linear_combination r4158)
      (by linear_combination r4159)
      (by linear_combination r4160)
      (by linear_combination r4161)
      (by linear_combination r4162)
    simpa [acc106, shiftOnce106] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc106 rho) (shiftOnce106 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc106 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce106 rho) (shifted106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4167) (rho 4168) (rho 4169) (rho 4170) (rho 4171) (rho 4172) (rho 4173)
      (by simpa [shiftOnce106] using hshift1On)
      (by linear_combination r4163)
      (by linear_combination r4164)
      (by linear_combination r4165)
      (by linear_combination r4166)
      (by linear_combination r4167)
    simpa [shiftOnce106, shifted106] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce106 rho) (shifted106 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce106 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 38) (rho 37)
      (base rho) (twice rho) (triple rho) (digit106 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 38) (rho 37)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4175 + rho 4176, (1 : F) + rho 4178 + rho 4179⟩ := by
      constructor
      · refine ⟨(rho 4174 + (rho 1818) - (0)), rho 4175, ?_, ?_, ?_⟩
        · linear_combination r4168
        · linear_combination r4169
        · linear_combination r4170
      · refine ⟨(rho 4177 + (rho 1819) - ((1 : F))), rho 4178, ?_, ?_, ?_⟩
        · linear_combination r4171
        · linear_combination r4172
        · linear_combination r4173
    simpa [base, twice, triple, digit106] using hraw
  have hhigh : rho 38 =
      Bool.toZMod bits[36]! := by
    simpa only using rho_bit_of_map rho bits hbits 36 (by decide +kernel)
  have hlow : rho 37 =
      Bool.toZMod bits[35]! := by
    simpa only using rho_bit_of_map rho bits hbits 35 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[36]! bits[35]! (base rho) (twice rho) (triple rho)
    (digit106 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit106 rho) := by
    rw [hdigit]
    cases bits[36]! <;> cases bits[35]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted106 rho) (digit106 rho) (acc107 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4172) (rho 4173) (rho 4175 + rho 4176) ((1 : F) + rho 4178 + rho 4179)
      (rho 4180) (rho 4181) (rho 4182) (rho 4183) (rho 4184) (rho 4185)
      (by simpa [shifted106] using hshift2On)
      (by simpa [digit106] using hdigitOn)
      (by linear_combination r4174)
      (by linear_combination r4175)
      (by linear_combination r4176)
      (by linear_combination r4177)
      (by linear_combination r4178)
      (by linear_combination r4179)
    simpa [shifted106, digit106, acc107] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc107 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted106 rho) (digit106 rho) (acc107 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted106 rho) (digit106 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 38) (rho 37)
      (base rho) (twice rho) (triple rho) (acc106 rho)
      (acc107 rho) :=
    ⟨shiftOnce106 rho, shifted106 rho, digit106 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window107 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc107 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[34]! (scalarBits rho)[33]!
        (base rho) (twice rho) (triple rho) (acc107 rho)
        (acc108 rho) ∧
      EdwardsBridge.onCurve (acc108 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4180 at r4180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4181 at r4181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4182 at r4182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4183 at r4183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4184 at r4184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4185 at r4185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4186 at r4186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4187 at r4187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4188 at r4188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4189 at r4189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4190 at r4190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4191 at r4191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4192 at r4192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4193 at r4193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4194 at r4194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4195 at r4195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4196 at r4196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4197 at r4197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4198 at r4198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4199 at r4199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4200 at r4200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4201 at r4201
  have hshift1 : EdwardsBridge.doubleSpec (acc107 rho) (shiftOnce107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4184) (rho 4185) (rho 4186) (rho 4187) (rho 4188) (rho 4189) (rho 4190)
      (by simpa [acc107] using hacc)
      (by linear_combination r4180)
      (by linear_combination r4181)
      (by linear_combination r4182)
      (by linear_combination r4183)
      (by linear_combination r4184)
    simpa [acc107, shiftOnce107] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc107 rho) (shiftOnce107 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc107 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce107 rho) (shifted107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4189) (rho 4190) (rho 4191) (rho 4192) (rho 4193) (rho 4194) (rho 4195)
      (by simpa [shiftOnce107] using hshift1On)
      (by linear_combination r4185)
      (by linear_combination r4186)
      (by linear_combination r4187)
      (by linear_combination r4188)
      (by linear_combination r4189)
    simpa [shiftOnce107, shifted107] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce107 rho) (shifted107 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce107 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 36) (rho 35)
      (base rho) (twice rho) (triple rho) (digit107 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 36) (rho 35)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4197 + rho 4198, (1 : F) + rho 4200 + rho 4201⟩ := by
      constructor
      · refine ⟨(rho 4196 + (rho 1818) - (0)), rho 4197, ?_, ?_, ?_⟩
        · linear_combination r4190
        · linear_combination r4191
        · linear_combination r4192
      · refine ⟨(rho 4199 + (rho 1819) - ((1 : F))), rho 4200, ?_, ?_, ?_⟩
        · linear_combination r4193
        · linear_combination r4194
        · linear_combination r4195
    simpa [base, twice, triple, digit107] using hraw
  have hhigh : rho 36 =
      Bool.toZMod bits[34]! := by
    simpa only using rho_bit_of_map rho bits hbits 34 (by decide +kernel)
  have hlow : rho 35 =
      Bool.toZMod bits[33]! := by
    simpa only using rho_bit_of_map rho bits hbits 33 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[34]! bits[33]! (base rho) (twice rho) (triple rho)
    (digit107 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit107 rho) := by
    rw [hdigit]
    cases bits[34]! <;> cases bits[33]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted107 rho) (digit107 rho) (acc108 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4194) (rho 4195) (rho 4197 + rho 4198) ((1 : F) + rho 4200 + rho 4201)
      (rho 4202) (rho 4203) (rho 4204) (rho 4205) (rho 4206) (rho 4207)
      (by simpa [shifted107] using hshift2On)
      (by simpa [digit107] using hdigitOn)
      (by linear_combination r4196)
      (by linear_combination r4197)
      (by linear_combination r4198)
      (by linear_combination r4199)
      (by linear_combination r4200)
      (by linear_combination r4201)
    simpa [shifted107, digit107, acc108] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc108 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted107 rho) (digit107 rho) (acc108 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted107 rho) (digit107 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 36) (rho 35)
      (base rho) (twice rho) (triple rho) (acc107 rho)
      (acc108 rho) :=
    ⟨shiftOnce107 rho, shifted107 rho, digit107 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
