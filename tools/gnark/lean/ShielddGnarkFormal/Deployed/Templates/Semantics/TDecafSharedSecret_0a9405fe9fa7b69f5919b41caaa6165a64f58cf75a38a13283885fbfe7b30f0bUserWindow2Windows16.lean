import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window96 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc96 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[56]! (scalarBits rho)[55]!
        (base rho) (twice rho) (triple rho) (acc96 rho)
        (acc97 rho) ∧
      EdwardsBridge.onCurve (acc97 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3938 at r3938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3939 at r3939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3940 at r3940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3941 at r3941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3942 at r3942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3943 at r3943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3944 at r3944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3945 at r3945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3946 at r3946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3947 at r3947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3948 at r3948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3949 at r3949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3950 at r3950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3951 at r3951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3952 at r3952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3953 at r3953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3954 at r3954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3955 at r3955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3956 at r3956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3957 at r3957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3958 at r3958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3959 at r3959
  have hshift1 : EdwardsBridge.doubleSpec (acc96 rho) (shiftOnce96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3942) (rho 3943) (rho 3944) (rho 3945) (rho 3946) (rho 3947) (rho 3948)
      (by simpa [acc96] using hacc)
      (by linear_combination r3938)
      (by linear_combination r3939)
      (by linear_combination r3940)
      (by linear_combination r3941)
      (by linear_combination r3942)
    simpa [acc96, shiftOnce96] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc96 rho) (shiftOnce96 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc96 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce96 rho) (shifted96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3947) (rho 3948) (rho 3949) (rho 3950) (rho 3951) (rho 3952) (rho 3953)
      (by simpa [shiftOnce96] using hshift1On)
      (by linear_combination r3943)
      (by linear_combination r3944)
      (by linear_combination r3945)
      (by linear_combination r3946)
      (by linear_combination r3947)
    simpa [shiftOnce96, shifted96] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce96 rho) (shifted96 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce96 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 58) (rho 57)
      (base rho) (twice rho) (triple rho) (digit96 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 58) (rho 57)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3955 + rho 3956, (1 : F) + rho 3958 + rho 3959⟩ := by
      constructor
      · refine ⟨(rho 3954 + (rho 1818) - (0)), rho 3955, ?_, ?_, ?_⟩
        · linear_combination r3948
        · linear_combination r3949
        · linear_combination r3950
      · refine ⟨(rho 3957 + (rho 1819) - ((1 : F))), rho 3958, ?_, ?_, ?_⟩
        · linear_combination r3951
        · linear_combination r3952
        · linear_combination r3953
    simpa [base, twice, triple, digit96] using hraw
  have hhigh : rho 58 =
      Bool.toZMod bits[56]! := by
    simpa only using rho_bit_of_map rho bits hbits 56 (by decide +kernel)
  have hlow : rho 57 =
      Bool.toZMod bits[55]! := by
    simpa only using rho_bit_of_map rho bits hbits 55 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[56]! bits[55]! (base rho) (twice rho) (triple rho)
    (digit96 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit96 rho) := by
    rw [hdigit]
    cases bits[56]! <;> cases bits[55]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted96 rho) (digit96 rho) (acc97 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3952) (rho 3953) (rho 3955 + rho 3956) ((1 : F) + rho 3958 + rho 3959)
      (rho 3960) (rho 3961) (rho 3962) (rho 3963) (rho 3964) (rho 3965)
      (by simpa [shifted96] using hshift2On)
      (by simpa [digit96] using hdigitOn)
      (by linear_combination r3954)
      (by linear_combination r3955)
      (by linear_combination r3956)
      (by linear_combination r3957)
      (by linear_combination r3958)
      (by linear_combination r3959)
    simpa [shifted96, digit96, acc97] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc97 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted96 rho) (digit96 rho) (acc97 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted96 rho) (digit96 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 58) (rho 57)
      (base rho) (twice rho) (triple rho) (acc96 rho)
      (acc97 rho) :=
    ⟨shiftOnce96 rho, shifted96 rho, digit96 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window97 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc97 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[54]! (scalarBits rho)[53]!
        (base rho) (twice rho) (triple rho) (acc97 rho)
        (acc98 rho) ∧
      EdwardsBridge.onCurve (acc98 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3960 at r3960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3961 at r3961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3962 at r3962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3963 at r3963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3964 at r3964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3965 at r3965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3966 at r3966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3967 at r3967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3968 at r3968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3969 at r3969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3970 at r3970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3971 at r3971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3972 at r3972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3973 at r3973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3974 at r3974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3975 at r3975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3976 at r3976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3977 at r3977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3978 at r3978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3979 at r3979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3980 at r3980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3981 at r3981
  have hshift1 : EdwardsBridge.doubleSpec (acc97 rho) (shiftOnce97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3964) (rho 3965) (rho 3966) (rho 3967) (rho 3968) (rho 3969) (rho 3970)
      (by simpa [acc97] using hacc)
      (by linear_combination r3960)
      (by linear_combination r3961)
      (by linear_combination r3962)
      (by linear_combination r3963)
      (by linear_combination r3964)
    simpa [acc97, shiftOnce97] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc97 rho) (shiftOnce97 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc97 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce97 rho) (shifted97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3969) (rho 3970) (rho 3971) (rho 3972) (rho 3973) (rho 3974) (rho 3975)
      (by simpa [shiftOnce97] using hshift1On)
      (by linear_combination r3965)
      (by linear_combination r3966)
      (by linear_combination r3967)
      (by linear_combination r3968)
      (by linear_combination r3969)
    simpa [shiftOnce97, shifted97] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce97 rho) (shifted97 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce97 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 56) (rho 55)
      (base rho) (twice rho) (triple rho) (digit97 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 56) (rho 55)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3977 + rho 3978, (1 : F) + rho 3980 + rho 3981⟩ := by
      constructor
      · refine ⟨(rho 3976 + (rho 1818) - (0)), rho 3977, ?_, ?_, ?_⟩
        · linear_combination r3970
        · linear_combination r3971
        · linear_combination r3972
      · refine ⟨(rho 3979 + (rho 1819) - ((1 : F))), rho 3980, ?_, ?_, ?_⟩
        · linear_combination r3973
        · linear_combination r3974
        · linear_combination r3975
    simpa [base, twice, triple, digit97] using hraw
  have hhigh : rho 56 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 55 =
      Bool.toZMod bits[53]! := by
    simpa only using rho_bit_of_map rho bits hbits 53 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[54]! bits[53]! (base rho) (twice rho) (triple rho)
    (digit97 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit97 rho) := by
    rw [hdigit]
    cases bits[54]! <;> cases bits[53]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted97 rho) (digit97 rho) (acc98 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3974) (rho 3975) (rho 3977 + rho 3978) ((1 : F) + rho 3980 + rho 3981)
      (rho 3982) (rho 3983) (rho 3984) (rho 3985) (rho 3986) (rho 3987)
      (by simpa [shifted97] using hshift2On)
      (by simpa [digit97] using hdigitOn)
      (by linear_combination r3976)
      (by linear_combination r3977)
      (by linear_combination r3978)
      (by linear_combination r3979)
      (by linear_combination r3980)
      (by linear_combination r3981)
    simpa [shifted97, digit97, acc98] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc98 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted97 rho) (digit97 rho) (acc98 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted97 rho) (digit97 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 56) (rho 55)
      (base rho) (twice rho) (triple rho) (acc97 rho)
      (acc98 rho) :=
    ⟨shiftOnce97 rho, shifted97 rho, digit97 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window98 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc98 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[52]! (scalarBits rho)[51]!
        (base rho) (twice rho) (triple rho) (acc98 rho)
        (acc99 rho) ∧
      EdwardsBridge.onCurve (acc99 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3982 at r3982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3983 at r3983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3984 at r3984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3985 at r3985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3986 at r3986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3987 at r3987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3988 at r3988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3989 at r3989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3990 at r3990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3991 at r3991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3992 at r3992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3993 at r3993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3994 at r3994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3995 at r3995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3996 at r3996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3997 at r3997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3998 at r3998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3999 at r3999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4000 at r4000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4001 at r4001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4002 at r4002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4003 at r4003
  have hshift1 : EdwardsBridge.doubleSpec (acc98 rho) (shiftOnce98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3986) (rho 3987) (rho 3988) (rho 3989) (rho 3990) (rho 3991) (rho 3992)
      (by simpa [acc98] using hacc)
      (by linear_combination r3982)
      (by linear_combination r3983)
      (by linear_combination r3984)
      (by linear_combination r3985)
      (by linear_combination r3986)
    simpa [acc98, shiftOnce98] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc98 rho) (shiftOnce98 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc98 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce98 rho) (shifted98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3991) (rho 3992) (rho 3993) (rho 3994) (rho 3995) (rho 3996) (rho 3997)
      (by simpa [shiftOnce98] using hshift1On)
      (by linear_combination r3987)
      (by linear_combination r3988)
      (by linear_combination r3989)
      (by linear_combination r3990)
      (by linear_combination r3991)
    simpa [shiftOnce98, shifted98] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce98 rho) (shifted98 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce98 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 54) (rho 53)
      (base rho) (twice rho) (triple rho) (digit98 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 54) (rho 53)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3999 + rho 4000, (1 : F) + rho 4002 + rho 4003⟩ := by
      constructor
      · refine ⟨(rho 3998 + (rho 1818) - (0)), rho 3999, ?_, ?_, ?_⟩
        · linear_combination r3992
        · linear_combination r3993
        · linear_combination r3994
      · refine ⟨(rho 4001 + (rho 1819) - ((1 : F))), rho 4002, ?_, ?_, ?_⟩
        · linear_combination r3995
        · linear_combination r3996
        · linear_combination r3997
    simpa [base, twice, triple, digit98] using hraw
  have hhigh : rho 54 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 53 =
      Bool.toZMod bits[51]! := by
    simpa only using rho_bit_of_map rho bits hbits 51 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[52]! bits[51]! (base rho) (twice rho) (triple rho)
    (digit98 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit98 rho) := by
    rw [hdigit]
    cases bits[52]! <;> cases bits[51]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted98 rho) (digit98 rho) (acc99 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3996) (rho 3997) (rho 3999 + rho 4000) ((1 : F) + rho 4002 + rho 4003)
      (rho 4004) (rho 4005) (rho 4006) (rho 4007) (rho 4008) (rho 4009)
      (by simpa [shifted98] using hshift2On)
      (by simpa [digit98] using hdigitOn)
      (by linear_combination r3998)
      (by linear_combination r3999)
      (by linear_combination r4000)
      (by linear_combination r4001)
      (by linear_combination r4002)
      (by linear_combination r4003)
    simpa [shifted98, digit98, acc99] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc99 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted98 rho) (digit98 rho) (acc99 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted98 rho) (digit98 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 54) (rho 53)
      (base rho) (twice rho) (triple rho) (acc98 rho)
      (acc99 rho) :=
    ⟨shiftOnce98 rho, shifted98 rho, digit98 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window99 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc99 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[50]! (scalarBits rho)[49]!
        (base rho) (twice rho) (triple rho) (acc99 rho)
        (acc100 rho) ∧
      EdwardsBridge.onCurve (acc100 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4004 at r4004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4005 at r4005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4006 at r4006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4007 at r4007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4008 at r4008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4009 at r4009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4010 at r4010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4011 at r4011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4012 at r4012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4013 at r4013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4014 at r4014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4015 at r4015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4016 at r4016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4017 at r4017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4018 at r4018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4019 at r4019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4020 at r4020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4021 at r4021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4022 at r4022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4023 at r4023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4024 at r4024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4025 at r4025
  have hshift1 : EdwardsBridge.doubleSpec (acc99 rho) (shiftOnce99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4008) (rho 4009) (rho 4010) (rho 4011) (rho 4012) (rho 4013) (rho 4014)
      (by simpa [acc99] using hacc)
      (by linear_combination r4004)
      (by linear_combination r4005)
      (by linear_combination r4006)
      (by linear_combination r4007)
      (by linear_combination r4008)
    simpa [acc99, shiftOnce99] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc99 rho) (shiftOnce99 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc99 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce99 rho) (shifted99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4013) (rho 4014) (rho 4015) (rho 4016) (rho 4017) (rho 4018) (rho 4019)
      (by simpa [shiftOnce99] using hshift1On)
      (by linear_combination r4009)
      (by linear_combination r4010)
      (by linear_combination r4011)
      (by linear_combination r4012)
      (by linear_combination r4013)
    simpa [shiftOnce99, shifted99] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce99 rho) (shifted99 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce99 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 52) (rho 51)
      (base rho) (twice rho) (triple rho) (digit99 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 52) (rho 51)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4021 + rho 4022, (1 : F) + rho 4024 + rho 4025⟩ := by
      constructor
      · refine ⟨(rho 4020 + (rho 1818) - (0)), rho 4021, ?_, ?_, ?_⟩
        · linear_combination r4014
        · linear_combination r4015
        · linear_combination r4016
      · refine ⟨(rho 4023 + (rho 1819) - ((1 : F))), rho 4024, ?_, ?_, ?_⟩
        · linear_combination r4017
        · linear_combination r4018
        · linear_combination r4019
    simpa [base, twice, triple, digit99] using hraw
  have hhigh : rho 52 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 51 =
      Bool.toZMod bits[49]! := by
    simpa only using rho_bit_of_map rho bits hbits 49 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[50]! bits[49]! (base rho) (twice rho) (triple rho)
    (digit99 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit99 rho) := by
    rw [hdigit]
    cases bits[50]! <;> cases bits[49]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted99 rho) (digit99 rho) (acc100 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4018) (rho 4019) (rho 4021 + rho 4022) ((1 : F) + rho 4024 + rho 4025)
      (rho 4026) (rho 4027) (rho 4028) (rho 4029) (rho 4030) (rho 4031)
      (by simpa [shifted99] using hshift2On)
      (by simpa [digit99] using hdigitOn)
      (by linear_combination r4020)
      (by linear_combination r4021)
      (by linear_combination r4022)
      (by linear_combination r4023)
      (by linear_combination r4024)
      (by linear_combination r4025)
    simpa [shifted99, digit99, acc100] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc100 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted99 rho) (digit99 rho) (acc100 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted99 rho) (digit99 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 52) (rho 51)
      (base rho) (twice rho) (triple rho) (acc99 rho)
      (acc100 rho) :=
    ⟨shiftOnce99 rho, shifted99 rho, digit99 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window100 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc100 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[48]! (scalarBits rho)[47]!
        (base rho) (twice rho) (triple rho) (acc100 rho)
        (acc101 rho) ∧
      EdwardsBridge.onCurve (acc101 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4026 at r4026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4027 at r4027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4028 at r4028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4029 at r4029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4030 at r4030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4031 at r4031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4032 at r4032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4033 at r4033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4034 at r4034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4035 at r4035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4036 at r4036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4037 at r4037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4038 at r4038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4039 at r4039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4040 at r4040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4041 at r4041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4042 at r4042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4043 at r4043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4044 at r4044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4045 at r4045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4046 at r4046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4047 at r4047
  have hshift1 : EdwardsBridge.doubleSpec (acc100 rho) (shiftOnce100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4030) (rho 4031) (rho 4032) (rho 4033) (rho 4034) (rho 4035) (rho 4036)
      (by simpa [acc100] using hacc)
      (by linear_combination r4026)
      (by linear_combination r4027)
      (by linear_combination r4028)
      (by linear_combination r4029)
      (by linear_combination r4030)
    simpa [acc100, shiftOnce100] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc100 rho) (shiftOnce100 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc100 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce100 rho) (shifted100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4035) (rho 4036) (rho 4037) (rho 4038) (rho 4039) (rho 4040) (rho 4041)
      (by simpa [shiftOnce100] using hshift1On)
      (by linear_combination r4031)
      (by linear_combination r4032)
      (by linear_combination r4033)
      (by linear_combination r4034)
      (by linear_combination r4035)
    simpa [shiftOnce100, shifted100] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce100 rho) (shifted100 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce100 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 50) (rho 49)
      (base rho) (twice rho) (triple rho) (digit100 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 50) (rho 49)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4043 + rho 4044, (1 : F) + rho 4046 + rho 4047⟩ := by
      constructor
      · refine ⟨(rho 4042 + (rho 1818) - (0)), rho 4043, ?_, ?_, ?_⟩
        · linear_combination r4036
        · linear_combination r4037
        · linear_combination r4038
      · refine ⟨(rho 4045 + (rho 1819) - ((1 : F))), rho 4046, ?_, ?_, ?_⟩
        · linear_combination r4039
        · linear_combination r4040
        · linear_combination r4041
    simpa [base, twice, triple, digit100] using hraw
  have hhigh : rho 50 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 49 =
      Bool.toZMod bits[47]! := by
    simpa only using rho_bit_of_map rho bits hbits 47 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[48]! bits[47]! (base rho) (twice rho) (triple rho)
    (digit100 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit100 rho) := by
    rw [hdigit]
    cases bits[48]! <;> cases bits[47]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted100 rho) (digit100 rho) (acc101 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4040) (rho 4041) (rho 4043 + rho 4044) ((1 : F) + rho 4046 + rho 4047)
      (rho 4048) (rho 4049) (rho 4050) (rho 4051) (rho 4052) (rho 4053)
      (by simpa [shifted100] using hshift2On)
      (by simpa [digit100] using hdigitOn)
      (by linear_combination r4042)
      (by linear_combination r4043)
      (by linear_combination r4044)
      (by linear_combination r4045)
      (by linear_combination r4046)
      (by linear_combination r4047)
    simpa [shifted100, digit100, acc101] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc101 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted100 rho) (digit100 rho) (acc101 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted100 rho) (digit100 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 50) (rho 49)
      (base rho) (twice rho) (triple rho) (acc100 rho)
      (acc101 rho) :=
    ⟨shiftOnce100 rho, shifted100 rho, digit100 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window101 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc101 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[46]! (scalarBits rho)[45]!
        (base rho) (twice rho) (triple rho) (acc101 rho)
        (acc102 rho) ∧
      EdwardsBridge.onCurve (acc102 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4048 at r4048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4049 at r4049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4050 at r4050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4051 at r4051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4052 at r4052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4053 at r4053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4054 at r4054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4055 at r4055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4056 at r4056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4057 at r4057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4058 at r4058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4059 at r4059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4060 at r4060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4061 at r4061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4062 at r4062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4063 at r4063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4064 at r4064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4065 at r4065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4066 at r4066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4067 at r4067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4068 at r4068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4069 at r4069
  have hshift1 : EdwardsBridge.doubleSpec (acc101 rho) (shiftOnce101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4052) (rho 4053) (rho 4054) (rho 4055) (rho 4056) (rho 4057) (rho 4058)
      (by simpa [acc101] using hacc)
      (by linear_combination r4048)
      (by linear_combination r4049)
      (by linear_combination r4050)
      (by linear_combination r4051)
      (by linear_combination r4052)
    simpa [acc101, shiftOnce101] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc101 rho) (shiftOnce101 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc101 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce101 rho) (shifted101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4057) (rho 4058) (rho 4059) (rho 4060) (rho 4061) (rho 4062) (rho 4063)
      (by simpa [shiftOnce101] using hshift1On)
      (by linear_combination r4053)
      (by linear_combination r4054)
      (by linear_combination r4055)
      (by linear_combination r4056)
      (by linear_combination r4057)
    simpa [shiftOnce101, shifted101] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce101 rho) (shifted101 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce101 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 48) (rho 47)
      (base rho) (twice rho) (triple rho) (digit101 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 48) (rho 47)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4065 + rho 4066, (1 : F) + rho 4068 + rho 4069⟩ := by
      constructor
      · refine ⟨(rho 4064 + (rho 1818) - (0)), rho 4065, ?_, ?_, ?_⟩
        · linear_combination r4058
        · linear_combination r4059
        · linear_combination r4060
      · refine ⟨(rho 4067 + (rho 1819) - ((1 : F))), rho 4068, ?_, ?_, ?_⟩
        · linear_combination r4061
        · linear_combination r4062
        · linear_combination r4063
    simpa [base, twice, triple, digit101] using hraw
  have hhigh : rho 48 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 47 =
      Bool.toZMod bits[45]! := by
    simpa only using rho_bit_of_map rho bits hbits 45 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[46]! bits[45]! (base rho) (twice rho) (triple rho)
    (digit101 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit101 rho) := by
    rw [hdigit]
    cases bits[46]! <;> cases bits[45]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted101 rho) (digit101 rho) (acc102 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4062) (rho 4063) (rho 4065 + rho 4066) ((1 : F) + rho 4068 + rho 4069)
      (rho 4070) (rho 4071) (rho 4072) (rho 4073) (rho 4074) (rho 4075)
      (by simpa [shifted101] using hshift2On)
      (by simpa [digit101] using hdigitOn)
      (by linear_combination r4064)
      (by linear_combination r4065)
      (by linear_combination r4066)
      (by linear_combination r4067)
      (by linear_combination r4068)
      (by linear_combination r4069)
    simpa [shifted101, digit101, acc102] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc102 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted101 rho) (digit101 rho) (acc102 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted101 rho) (digit101 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 48) (rho 47)
      (base rho) (twice rho) (triple rho) (acc101 rho)
      (acc102 rho) :=
    ⟨shiftOnce101 rho, shifted101 rho, digit101 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
