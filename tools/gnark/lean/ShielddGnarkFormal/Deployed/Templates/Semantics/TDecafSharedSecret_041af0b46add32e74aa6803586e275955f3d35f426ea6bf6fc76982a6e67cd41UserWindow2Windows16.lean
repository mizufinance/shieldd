import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window96 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3937 at r3937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3938 at r3938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3939 at r3939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3940 at r3940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3941 at r3941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3942 at r3942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3943 at r3943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3944 at r3944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3945 at r3945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3946 at r3946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3947 at r3947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3948 at r3948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3949 at r3949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3950 at r3950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3951 at r3951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3952 at r3952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3953 at r3953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3954 at r3954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3955 at r3955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3956 at r3956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3957 at r3957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3958 at r3958
  have hshift1 : EdwardsBridge.doubleSpec (acc96 rho) (shiftOnce96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3941) (rho 3942) (rho 3943) (rho 3944) (rho 3945) (rho 3946) (rho 3947)
      (by simpa [acc96] using hacc)
      (by linear_combination r3937)
      (by linear_combination r3938)
      (by linear_combination r3939)
      (by linear_combination r3940)
      (by linear_combination r3941)
    simpa [acc96, shiftOnce96] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc96 rho) (shiftOnce96 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc96 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce96 rho) (shifted96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3946) (rho 3947) (rho 3948) (rho 3949) (rho 3950) (rho 3951) (rho 3952)
      (by simpa [shiftOnce96] using hshift1On)
      (by linear_combination r3942)
      (by linear_combination r3943)
      (by linear_combination r3944)
      (by linear_combination r3945)
      (by linear_combination r3946)
    simpa [shiftOnce96, shifted96] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce96 rho) (shifted96 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce96 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 57) (rho 56)
      (base rho) (twice rho) (triple rho) (digit96 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 57) (rho 56)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3954 + rho 3955, (1 : F) + rho 3957 + rho 3958⟩ := by
      constructor
      · refine ⟨(rho 3953 + (rho 1817) - (0)), rho 3954, ?_, ?_, ?_⟩
        · linear_combination r3947
        · linear_combination r3948
        · linear_combination r3949
      · refine ⟨(rho 3956 + (rho 1818) - ((1 : F))), rho 3957, ?_, ?_, ?_⟩
        · linear_combination r3950
        · linear_combination r3951
        · linear_combination r3952
    simpa [base, twice, triple, digit96] using hraw
  have hhigh : rho 57 =
      Bool.toZMod bits[56]! := by
    simpa only using rho_bit_of_map rho bits hbits 56 (by decide +kernel)
  have hlow : rho 56 =
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
      (rho 3951) (rho 3952) (rho 3954 + rho 3955) ((1 : F) + rho 3957 + rho 3958)
      (rho 3959) (rho 3960) (rho 3961) (rho 3962) (rho 3963) (rho 3964)
      (by simpa [shifted96] using hshift2On)
      (by simpa [digit96] using hdigitOn)
      (by linear_combination r3953)
      (by linear_combination r3954)
      (by linear_combination r3955)
      (by linear_combination r3956)
      (by linear_combination r3957)
      (by linear_combination r3958)
    simpa [shifted96, digit96, acc97] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc97 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted96 rho) (digit96 rho) (acc97 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted96 rho) (digit96 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 57) (rho 56)
      (base rho) (twice rho) (triple rho) (acc96 rho)
      (acc97 rho) :=
    ⟨shiftOnce96 rho, shifted96 rho, digit96 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window97 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3959, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3959 at r3959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3960 at r3960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3961 at r3961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3962 at r3962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3963 at r3963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3964 at r3964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3965 at r3965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3966 at r3966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3967 at r3967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3968 at r3968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3969 at r3969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3970 at r3970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3971 at r3971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3972 at r3972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3973 at r3973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3974 at r3974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3975 at r3975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3976 at r3976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3977 at r3977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3978 at r3978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3979 at r3979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3980 at r3980
  have hshift1 : EdwardsBridge.doubleSpec (acc97 rho) (shiftOnce97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3963) (rho 3964) (rho 3965) (rho 3966) (rho 3967) (rho 3968) (rho 3969)
      (by simpa [acc97] using hacc)
      (by linear_combination r3959)
      (by linear_combination r3960)
      (by linear_combination r3961)
      (by linear_combination r3962)
      (by linear_combination r3963)
    simpa [acc97, shiftOnce97] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc97 rho) (shiftOnce97 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc97 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce97 rho) (shifted97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3968) (rho 3969) (rho 3970) (rho 3971) (rho 3972) (rho 3973) (rho 3974)
      (by simpa [shiftOnce97] using hshift1On)
      (by linear_combination r3964)
      (by linear_combination r3965)
      (by linear_combination r3966)
      (by linear_combination r3967)
      (by linear_combination r3968)
    simpa [shiftOnce97, shifted97] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce97 rho) (shifted97 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce97 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 55) (rho 54)
      (base rho) (twice rho) (triple rho) (digit97 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 55) (rho 54)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3976 + rho 3977, (1 : F) + rho 3979 + rho 3980⟩ := by
      constructor
      · refine ⟨(rho 3975 + (rho 1817) - (0)), rho 3976, ?_, ?_, ?_⟩
        · linear_combination r3969
        · linear_combination r3970
        · linear_combination r3971
      · refine ⟨(rho 3978 + (rho 1818) - ((1 : F))), rho 3979, ?_, ?_, ?_⟩
        · linear_combination r3972
        · linear_combination r3973
        · linear_combination r3974
    simpa [base, twice, triple, digit97] using hraw
  have hhigh : rho 55 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 54 =
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
      (rho 3973) (rho 3974) (rho 3976 + rho 3977) ((1 : F) + rho 3979 + rho 3980)
      (rho 3981) (rho 3982) (rho 3983) (rho 3984) (rho 3985) (rho 3986)
      (by simpa [shifted97] using hshift2On)
      (by simpa [digit97] using hdigitOn)
      (by linear_combination r3975)
      (by linear_combination r3976)
      (by linear_combination r3977)
      (by linear_combination r3978)
      (by linear_combination r3979)
      (by linear_combination r3980)
    simpa [shifted97, digit97, acc98] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc98 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted97 rho) (digit97 rho) (acc98 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted97 rho) (digit97 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 55) (rho 54)
      (base rho) (twice rho) (triple rho) (acc97 rho)
      (acc98 rho) :=
    ⟨shiftOnce97 rho, shifted97 rho, digit97 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window98 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3981 at r3981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3982 at r3982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3983 at r3983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3984 at r3984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3985 at r3985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3986 at r3986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3987 at r3987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3988 at r3988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3989 at r3989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3990 at r3990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3991 at r3991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3992 at r3992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3993 at r3993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3994 at r3994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3995 at r3995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3996 at r3996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3997 at r3997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3998 at r3998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3999 at r3999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4000 at r4000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4001 at r4001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4002 at r4002
  have hshift1 : EdwardsBridge.doubleSpec (acc98 rho) (shiftOnce98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3985) (rho 3986) (rho 3987) (rho 3988) (rho 3989) (rho 3990) (rho 3991)
      (by simpa [acc98] using hacc)
      (by linear_combination r3981)
      (by linear_combination r3982)
      (by linear_combination r3983)
      (by linear_combination r3984)
      (by linear_combination r3985)
    simpa [acc98, shiftOnce98] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc98 rho) (shiftOnce98 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc98 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce98 rho) (shifted98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3990) (rho 3991) (rho 3992) (rho 3993) (rho 3994) (rho 3995) (rho 3996)
      (by simpa [shiftOnce98] using hshift1On)
      (by linear_combination r3986)
      (by linear_combination r3987)
      (by linear_combination r3988)
      (by linear_combination r3989)
      (by linear_combination r3990)
    simpa [shiftOnce98, shifted98] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce98 rho) (shifted98 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce98 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 53) (rho 52)
      (base rho) (twice rho) (triple rho) (digit98 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 53) (rho 52)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3998 + rho 3999, (1 : F) + rho 4001 + rho 4002⟩ := by
      constructor
      · refine ⟨(rho 3997 + (rho 1817) - (0)), rho 3998, ?_, ?_, ?_⟩
        · linear_combination r3991
        · linear_combination r3992
        · linear_combination r3993
      · refine ⟨(rho 4000 + (rho 1818) - ((1 : F))), rho 4001, ?_, ?_, ?_⟩
        · linear_combination r3994
        · linear_combination r3995
        · linear_combination r3996
    simpa [base, twice, triple, digit98] using hraw
  have hhigh : rho 53 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 52 =
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
      (rho 3995) (rho 3996) (rho 3998 + rho 3999) ((1 : F) + rho 4001 + rho 4002)
      (rho 4003) (rho 4004) (rho 4005) (rho 4006) (rho 4007) (rho 4008)
      (by simpa [shifted98] using hshift2On)
      (by simpa [digit98] using hdigitOn)
      (by linear_combination r3997)
      (by linear_combination r3998)
      (by linear_combination r3999)
      (by linear_combination r4000)
      (by linear_combination r4001)
      (by linear_combination r4002)
    simpa [shifted98, digit98, acc99] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc99 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted98 rho) (digit98 rho) (acc99 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted98 rho) (digit98 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 53) (rho 52)
      (base rho) (twice rho) (triple rho) (acc98 rho)
      (acc99 rho) :=
    ⟨shiftOnce98 rho, shifted98 rho, digit98 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window99 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart50 at p50
  rcases p50 with ⟨_, _, _, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4003 at r4003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4004 at r4004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4005 at r4005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4006 at r4006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4007 at r4007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4008 at r4008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4009 at r4009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4010 at r4010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4011 at r4011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4012 at r4012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4013 at r4013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4014 at r4014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4015 at r4015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4016 at r4016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4017 at r4017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4018 at r4018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4019 at r4019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4020 at r4020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4021 at r4021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4022 at r4022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4023 at r4023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4024 at r4024
  have hshift1 : EdwardsBridge.doubleSpec (acc99 rho) (shiftOnce99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4007) (rho 4008) (rho 4009) (rho 4010) (rho 4011) (rho 4012) (rho 4013)
      (by simpa [acc99] using hacc)
      (by linear_combination r4003)
      (by linear_combination r4004)
      (by linear_combination r4005)
      (by linear_combination r4006)
      (by linear_combination r4007)
    simpa [acc99, shiftOnce99] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc99 rho) (shiftOnce99 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc99 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce99 rho) (shifted99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4012) (rho 4013) (rho 4014) (rho 4015) (rho 4016) (rho 4017) (rho 4018)
      (by simpa [shiftOnce99] using hshift1On)
      (by linear_combination r4008)
      (by linear_combination r4009)
      (by linear_combination r4010)
      (by linear_combination r4011)
      (by linear_combination r4012)
    simpa [shiftOnce99, shifted99] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce99 rho) (shifted99 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce99 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 51) (rho 50)
      (base rho) (twice rho) (triple rho) (digit99 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 51) (rho 50)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4020 + rho 4021, (1 : F) + rho 4023 + rho 4024⟩ := by
      constructor
      · refine ⟨(rho 4019 + (rho 1817) - (0)), rho 4020, ?_, ?_, ?_⟩
        · linear_combination r4013
        · linear_combination r4014
        · linear_combination r4015
      · refine ⟨(rho 4022 + (rho 1818) - ((1 : F))), rho 4023, ?_, ?_, ?_⟩
        · linear_combination r4016
        · linear_combination r4017
        · linear_combination r4018
    simpa [base, twice, triple, digit99] using hraw
  have hhigh : rho 51 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 50 =
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
      (rho 4017) (rho 4018) (rho 4020 + rho 4021) ((1 : F) + rho 4023 + rho 4024)
      (rho 4025) (rho 4026) (rho 4027) (rho 4028) (rho 4029) (rho 4030)
      (by simpa [shifted99] using hshift2On)
      (by simpa [digit99] using hdigitOn)
      (by linear_combination r4019)
      (by linear_combination r4020)
      (by linear_combination r4021)
      (by linear_combination r4022)
      (by linear_combination r4023)
      (by linear_combination r4024)
    simpa [shifted99, digit99, acc100] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc100 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted99 rho) (digit99 rho) (acc100 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted99 rho) (digit99 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 51) (rho 50)
      (base rho) (twice rho) (triple rho) (acc99 rho)
      (acc100 rho) :=
    ⟨shiftOnce99 rho, shifted99 rho, digit99 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window100 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4025 at r4025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4026 at r4026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4027 at r4027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4028 at r4028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4029 at r4029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4030 at r4030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4031 at r4031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4032 at r4032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4033 at r4033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4034 at r4034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4035 at r4035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4036 at r4036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4037 at r4037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4038 at r4038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4039 at r4039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4040 at r4040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4041 at r4041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4042 at r4042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4043 at r4043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4044 at r4044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4045 at r4045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4046 at r4046
  have hshift1 : EdwardsBridge.doubleSpec (acc100 rho) (shiftOnce100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4029) (rho 4030) (rho 4031) (rho 4032) (rho 4033) (rho 4034) (rho 4035)
      (by simpa [acc100] using hacc)
      (by linear_combination r4025)
      (by linear_combination r4026)
      (by linear_combination r4027)
      (by linear_combination r4028)
      (by linear_combination r4029)
    simpa [acc100, shiftOnce100] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc100 rho) (shiftOnce100 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc100 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce100 rho) (shifted100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4034) (rho 4035) (rho 4036) (rho 4037) (rho 4038) (rho 4039) (rho 4040)
      (by simpa [shiftOnce100] using hshift1On)
      (by linear_combination r4030)
      (by linear_combination r4031)
      (by linear_combination r4032)
      (by linear_combination r4033)
      (by linear_combination r4034)
    simpa [shiftOnce100, shifted100] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce100 rho) (shifted100 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce100 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 49) (rho 48)
      (base rho) (twice rho) (triple rho) (digit100 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 49) (rho 48)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4042 + rho 4043, (1 : F) + rho 4045 + rho 4046⟩ := by
      constructor
      · refine ⟨(rho 4041 + (rho 1817) - (0)), rho 4042, ?_, ?_, ?_⟩
        · linear_combination r4035
        · linear_combination r4036
        · linear_combination r4037
      · refine ⟨(rho 4044 + (rho 1818) - ((1 : F))), rho 4045, ?_, ?_, ?_⟩
        · linear_combination r4038
        · linear_combination r4039
        · linear_combination r4040
    simpa [base, twice, triple, digit100] using hraw
  have hhigh : rho 49 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 48 =
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
      (rho 4039) (rho 4040) (rho 4042 + rho 4043) ((1 : F) + rho 4045 + rho 4046)
      (rho 4047) (rho 4048) (rho 4049) (rho 4050) (rho 4051) (rho 4052)
      (by simpa [shifted100] using hshift2On)
      (by simpa [digit100] using hdigitOn)
      (by linear_combination r4041)
      (by linear_combination r4042)
      (by linear_combination r4043)
      (by linear_combination r4044)
      (by linear_combination r4045)
      (by linear_combination r4046)
    simpa [shifted100, digit100, acc101] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc101 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted100 rho) (digit100 rho) (acc101 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted100 rho) (digit100 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 49) (rho 48)
      (base rho) (twice rho) (triple rho) (acc100 rho)
      (acc101 rho) :=
    ⟨shiftOnce100 rho, shifted100 rho, digit100 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window101 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4047 at r4047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4048 at r4048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4049 at r4049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4050 at r4050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4051 at r4051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4052 at r4052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4053 at r4053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4054 at r4054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4055 at r4055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4056 at r4056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4057 at r4057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4058 at r4058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4059 at r4059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4060 at r4060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4061 at r4061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4062 at r4062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4063 at r4063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4064 at r4064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4065 at r4065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4066 at r4066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4067 at r4067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4068 at r4068
  have hshift1 : EdwardsBridge.doubleSpec (acc101 rho) (shiftOnce101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4051) (rho 4052) (rho 4053) (rho 4054) (rho 4055) (rho 4056) (rho 4057)
      (by simpa [acc101] using hacc)
      (by linear_combination r4047)
      (by linear_combination r4048)
      (by linear_combination r4049)
      (by linear_combination r4050)
      (by linear_combination r4051)
    simpa [acc101, shiftOnce101] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc101 rho) (shiftOnce101 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc101 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce101 rho) (shifted101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4056) (rho 4057) (rho 4058) (rho 4059) (rho 4060) (rho 4061) (rho 4062)
      (by simpa [shiftOnce101] using hshift1On)
      (by linear_combination r4052)
      (by linear_combination r4053)
      (by linear_combination r4054)
      (by linear_combination r4055)
      (by linear_combination r4056)
    simpa [shiftOnce101, shifted101] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce101 rho) (shifted101 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce101 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 47) (rho 46)
      (base rho) (twice rho) (triple rho) (digit101 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 47) (rho 46)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4064 + rho 4065, (1 : F) + rho 4067 + rho 4068⟩ := by
      constructor
      · refine ⟨(rho 4063 + (rho 1817) - (0)), rho 4064, ?_, ?_, ?_⟩
        · linear_combination r4057
        · linear_combination r4058
        · linear_combination r4059
      · refine ⟨(rho 4066 + (rho 1818) - ((1 : F))), rho 4067, ?_, ?_, ?_⟩
        · linear_combination r4060
        · linear_combination r4061
        · linear_combination r4062
    simpa [base, twice, triple, digit101] using hraw
  have hhigh : rho 47 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 46 =
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
      (rho 4061) (rho 4062) (rho 4064 + rho 4065) ((1 : F) + rho 4067 + rho 4068)
      (rho 4069) (rho 4070) (rho 4071) (rho 4072) (rho 4073) (rho 4074)
      (by simpa [shifted101] using hshift2On)
      (by simpa [digit101] using hdigitOn)
      (by linear_combination r4063)
      (by linear_combination r4064)
      (by linear_combination r4065)
      (by linear_combination r4066)
      (by linear_combination r4067)
      (by linear_combination r4068)
    simpa [shifted101, digit101, acc102] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc102 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted101 rho) (digit101 rho) (acc102 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted101 rho) (digit101 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 47) (rho 46)
      (base rho) (twice rho) (triple rho) (acc101 rho)
      (acc102 rho) :=
    ⟨shiftOnce101 rho, shifted101 rho, digit101 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
