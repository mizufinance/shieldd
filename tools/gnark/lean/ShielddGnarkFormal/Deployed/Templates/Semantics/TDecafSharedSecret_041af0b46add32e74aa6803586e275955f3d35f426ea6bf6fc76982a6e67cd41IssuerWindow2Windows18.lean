import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window108 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc108 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[32]! (scalarBits rho)[31]!
        (base rho) (twice rho) (triple rho) (acc108 rho)
        (acc109 rho) ∧
      EdwardsBridge.onCurve (acc109 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p86, p87, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart86 at p86
  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart87 at p87
  rcases p87 with ⟨r6960, r6961, r6962, r6963, r6964, r6965, r6966, r6967, r6968, r6969, r6970, r6971, r6972, r6973, r6974, r6975, r6976, r6977, r6978, r6979, r6980, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6959 at r6959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6960 at r6960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6961 at r6961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6962 at r6962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6963 at r6963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6964 at r6964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6965 at r6965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6966 at r6966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6967 at r6967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6968 at r6968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6969 at r6969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6970 at r6970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6971 at r6971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6972 at r6972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6973 at r6973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6974 at r6974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6975 at r6975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6976 at r6976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6977 at r6977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6978 at r6978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6979 at r6979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6980 at r6980
  have hshift1 : EdwardsBridge.doubleSpec (acc108 rho) (shiftOnce108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6965) (rho 6966) (rho 6967) (rho 6968) (rho 6969) (rho 6970) (rho 6971)
      (by simpa [acc108] using hacc)
      (by linear_combination r6959)
      (by linear_combination r6960)
      (by linear_combination r6961)
      (by linear_combination r6962)
      (by linear_combination r6963)
    simpa [acc108, shiftOnce108] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc108 rho) (shiftOnce108 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc108 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce108 rho) (shifted108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6970) (rho 6971) (rho 6972) (rho 6973) (rho 6974) (rho 6975) (rho 6976)
      (by simpa [shiftOnce108] using hshift1On)
      (by linear_combination r6964)
      (by linear_combination r6965)
      (by linear_combination r6966)
      (by linear_combination r6967)
      (by linear_combination r6968)
    simpa [shiftOnce108, shifted108] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce108 rho) (shifted108 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce108 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 33) (rho 32)
      (base rho) (twice rho) (triple rho) (digit108 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 33) (rho 32)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6978 + rho 6979, (1 : F) + rho 6981 + rho 6982⟩ := by
      constructor
      · refine ⟨(rho 6977 + (rho 4577) - (0)), rho 6978, ?_, ?_, ?_⟩
        · linear_combination r6969 - (rho 32) * order_cast_zero
        · linear_combination r6970
        · linear_combination r6971
      · refine ⟨(rho 6980 + (rho 4578) - ((1 : F))), rho 6981, ?_, ?_, ?_⟩
        · linear_combination r6972 - (rho 32) * order_cast_zero
        · linear_combination r6973
        · linear_combination r6974
    simpa [base, twice, triple, digit108] using hraw
  have hhigh : rho 33 =
      Bool.toZMod bits[32]! := by
    simpa only using rho_bit_of_map rho bits hbits 32 (by decide +kernel)
  have hlow : rho 32 =
      Bool.toZMod bits[31]! := by
    simpa only using rho_bit_of_map rho bits hbits 31 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[32]! bits[31]! (base rho) (twice rho) (triple rho)
    (digit108 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit108 rho) := by
    rw [hdigit]
    cases bits[32]! <;> cases bits[31]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted108 rho) (digit108 rho) (acc109 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6975) (rho 6976) (rho 6978 + rho 6979) ((1 : F) + rho 6981 + rho 6982)
      (rho 6983) (rho 6984) (rho 6985) (rho 6986) (rho 6987) (rho 6988)
      (by simpa [shifted108] using hshift2On)
      (by simpa [digit108] using hdigitOn)
      (by linear_combination r6975)
      (by linear_combination r6976)
      (by linear_combination r6977)
      (by linear_combination r6978)
      (by linear_combination r6979)
      (by linear_combination r6980)
    simpa [shifted108, digit108, acc109] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc109 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted108 rho) (digit108 rho) (acc109 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted108 rho) (digit108 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 33) (rho 32)
      (base rho) (twice rho) (triple rho) (acc108 rho)
      (acc109 rho) :=
    ⟨shiftOnce108 rho, shifted108 rho, digit108 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window109 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc109 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[30]! (scalarBits rho)[29]!
        (base rho) (twice rho) (triple rho) (acc109 rho)
        (acc110 rho) ∧
      EdwardsBridge.onCurve (acc110 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p87, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart87 at p87
  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6981, r6982, r6983, r6984, r6985, r6986, r6987, r6988, r6989, r6990, r6991, r6992, r6993, r6994, r6995, r6996, r6997, r6998, r6999, r7000, r7001, r7002, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6981 at r6981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6982 at r6982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6983 at r6983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6984 at r6984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6985 at r6985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6986 at r6986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6987 at r6987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6988 at r6988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6989 at r6989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6990 at r6990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6991 at r6991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6992 at r6992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6993 at r6993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6994 at r6994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6995 at r6995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6996 at r6996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6997 at r6997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6998 at r6998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6999 at r6999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7000 at r7000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7001 at r7001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7002 at r7002
  have hshift1 : EdwardsBridge.doubleSpec (acc109 rho) (shiftOnce109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6987) (rho 6988) (rho 6989) (rho 6990) (rho 6991) (rho 6992) (rho 6993)
      (by simpa [acc109] using hacc)
      (by linear_combination r6981)
      (by linear_combination r6982)
      (by linear_combination r6983)
      (by linear_combination r6984)
      (by linear_combination r6985)
    simpa [acc109, shiftOnce109] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc109 rho) (shiftOnce109 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc109 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce109 rho) (shifted109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6992) (rho 6993) (rho 6994) (rho 6995) (rho 6996) (rho 6997) (rho 6998)
      (by simpa [shiftOnce109] using hshift1On)
      (by linear_combination r6986)
      (by linear_combination r6987)
      (by linear_combination r6988)
      (by linear_combination r6989)
      (by linear_combination r6990)
    simpa [shiftOnce109, shifted109] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce109 rho) (shifted109 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce109 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 31) (rho 30)
      (base rho) (twice rho) (triple rho) (digit109 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 31) (rho 30)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7000 + rho 7001, (1 : F) + rho 7003 + rho 7004⟩ := by
      constructor
      · refine ⟨(rho 6999 + (rho 4577) - (0)), rho 7000, ?_, ?_, ?_⟩
        · linear_combination r6991 - (rho 30) * order_cast_zero
        · linear_combination r6992
        · linear_combination r6993
      · refine ⟨(rho 7002 + (rho 4578) - ((1 : F))), rho 7003, ?_, ?_, ?_⟩
        · linear_combination r6994 - (rho 30) * order_cast_zero
        · linear_combination r6995
        · linear_combination r6996
    simpa [base, twice, triple, digit109] using hraw
  have hhigh : rho 31 =
      Bool.toZMod bits[30]! := by
    simpa only using rho_bit_of_map rho bits hbits 30 (by decide +kernel)
  have hlow : rho 30 =
      Bool.toZMod bits[29]! := by
    simpa only using rho_bit_of_map rho bits hbits 29 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[30]! bits[29]! (base rho) (twice rho) (triple rho)
    (digit109 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit109 rho) := by
    rw [hdigit]
    cases bits[30]! <;> cases bits[29]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted109 rho) (digit109 rho) (acc110 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6997) (rho 6998) (rho 7000 + rho 7001) ((1 : F) + rho 7003 + rho 7004)
      (rho 7005) (rho 7006) (rho 7007) (rho 7008) (rho 7009) (rho 7010)
      (by simpa [shifted109] using hshift2On)
      (by simpa [digit109] using hdigitOn)
      (by linear_combination r6997)
      (by linear_combination r6998)
      (by linear_combination r6999)
      (by linear_combination r7000)
      (by linear_combination r7001)
      (by linear_combination r7002)
    simpa [shifted109, digit109, acc110] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc110 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted109 rho) (digit109 rho) (acc110 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted109 rho) (digit109 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 31) (rho 30)
      (base rho) (twice rho) (triple rho) (acc109 rho)
      (acc110 rho) :=
    ⟨shiftOnce109 rho, shifted109 rho, digit109 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window110 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc110 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[28]! (scalarBits rho)[27]!
        (base rho) (twice rho) (triple rho) (acc110 rho)
        (acc111 rho) ∧
      EdwardsBridge.onCurve (acc111 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p87, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart87 at p87
  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7003, r7004, r7005, r7006, r7007, r7008, r7009, r7010, r7011, r7012, r7013, r7014, r7015, r7016, r7017, r7018, r7019, r7020, r7021, r7022, r7023, r7024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7003 at r7003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7004 at r7004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7005 at r7005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7006 at r7006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7007 at r7007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7008 at r7008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7009 at r7009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7010 at r7010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7011 at r7011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7012 at r7012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7013 at r7013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7014 at r7014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7015 at r7015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7016 at r7016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7017 at r7017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7018 at r7018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7019 at r7019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7020 at r7020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7021 at r7021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7022 at r7022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7023 at r7023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7024 at r7024
  have hshift1 : EdwardsBridge.doubleSpec (acc110 rho) (shiftOnce110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7009) (rho 7010) (rho 7011) (rho 7012) (rho 7013) (rho 7014) (rho 7015)
      (by simpa [acc110] using hacc)
      (by linear_combination r7003)
      (by linear_combination r7004)
      (by linear_combination r7005)
      (by linear_combination r7006)
      (by linear_combination r7007)
    simpa [acc110, shiftOnce110] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc110 rho) (shiftOnce110 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc110 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce110 rho) (shifted110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7014) (rho 7015) (rho 7016) (rho 7017) (rho 7018) (rho 7019) (rho 7020)
      (by simpa [shiftOnce110] using hshift1On)
      (by linear_combination r7008)
      (by linear_combination r7009)
      (by linear_combination r7010)
      (by linear_combination r7011)
      (by linear_combination r7012)
    simpa [shiftOnce110, shifted110] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce110 rho) (shifted110 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce110 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 29) (rho 28)
      (base rho) (twice rho) (triple rho) (digit110 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 29) (rho 28)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7022 + rho 7023, (1 : F) + rho 7025 + rho 7026⟩ := by
      constructor
      · refine ⟨(rho 7021 + (rho 4577) - (0)), rho 7022, ?_, ?_, ?_⟩
        · linear_combination r7013 - (rho 28) * order_cast_zero
        · linear_combination r7014
        · linear_combination r7015
      · refine ⟨(rho 7024 + (rho 4578) - ((1 : F))), rho 7025, ?_, ?_, ?_⟩
        · linear_combination r7016 - (rho 28) * order_cast_zero
        · linear_combination r7017
        · linear_combination r7018
    simpa [base, twice, triple, digit110] using hraw
  have hhigh : rho 29 =
      Bool.toZMod bits[28]! := by
    simpa only using rho_bit_of_map rho bits hbits 28 (by decide +kernel)
  have hlow : rho 28 =
      Bool.toZMod bits[27]! := by
    simpa only using rho_bit_of_map rho bits hbits 27 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[28]! bits[27]! (base rho) (twice rho) (triple rho)
    (digit110 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit110 rho) := by
    rw [hdigit]
    cases bits[28]! <;> cases bits[27]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted110 rho) (digit110 rho) (acc111 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7019) (rho 7020) (rho 7022 + rho 7023) ((1 : F) + rho 7025 + rho 7026)
      (rho 7027) (rho 7028) (rho 7029) (rho 7030) (rho 7031) (rho 7032)
      (by simpa [shifted110] using hshift2On)
      (by simpa [digit110] using hdigitOn)
      (by linear_combination r7019)
      (by linear_combination r7020)
      (by linear_combination r7021)
      (by linear_combination r7022)
      (by linear_combination r7023)
      (by linear_combination r7024)
    simpa [shifted110, digit110, acc111] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc111 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted110 rho) (digit110 rho) (acc111 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted110 rho) (digit110 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 29) (rho 28)
      (base rho) (twice rho) (triple rho) (acc110 rho)
      (acc111 rho) :=
    ⟨shiftOnce110 rho, shifted110 rho, digit110 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window111 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc111 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[26]! (scalarBits rho)[25]!
        (base rho) (twice rho) (triple rho) (acc111 rho)
        (acc112 rho) ∧
      EdwardsBridge.onCurve (acc112 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p87, p88, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart87 at p87
  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7025, r7026, r7027, r7028, r7029, r7030, r7031, r7032, r7033, r7034, r7035, r7036, r7037, r7038, r7039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart88 at p88
  rcases p88 with ⟨r7040, r7041, r7042, r7043, r7044, r7045, r7046, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7025 at r7025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7026 at r7026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7027 at r7027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7028 at r7028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7029 at r7029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7030 at r7030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7031 at r7031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7032 at r7032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7033 at r7033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7034 at r7034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7035 at r7035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7036 at r7036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7037 at r7037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7038 at r7038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7039 at r7039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7040 at r7040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7041 at r7041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7042 at r7042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7043 at r7043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7044 at r7044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7045 at r7045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7046 at r7046
  have hshift1 : EdwardsBridge.doubleSpec (acc111 rho) (shiftOnce111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7031) (rho 7032) (rho 7033) (rho 7034) (rho 7035) (rho 7036) (rho 7037)
      (by simpa [acc111] using hacc)
      (by linear_combination r7025)
      (by linear_combination r7026)
      (by linear_combination r7027)
      (by linear_combination r7028)
      (by linear_combination r7029)
    simpa [acc111, shiftOnce111] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc111 rho) (shiftOnce111 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc111 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce111 rho) (shifted111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7036) (rho 7037) (rho 7038) (rho 7039) (rho 7040) (rho 7041) (rho 7042)
      (by simpa [shiftOnce111] using hshift1On)
      (by linear_combination r7030)
      (by linear_combination r7031)
      (by linear_combination r7032)
      (by linear_combination r7033)
      (by linear_combination r7034)
    simpa [shiftOnce111, shifted111] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce111 rho) (shifted111 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce111 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 27) (rho 26)
      (base rho) (twice rho) (triple rho) (digit111 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 27) (rho 26)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7044 + rho 7045, (1 : F) + rho 7047 + rho 7048⟩ := by
      constructor
      · refine ⟨(rho 7043 + (rho 4577) - (0)), rho 7044, ?_, ?_, ?_⟩
        · linear_combination r7035 - (rho 26) * order_cast_zero
        · linear_combination r7036
        · linear_combination r7037
      · refine ⟨(rho 7046 + (rho 4578) - ((1 : F))), rho 7047, ?_, ?_, ?_⟩
        · linear_combination r7038 - (rho 26) * order_cast_zero
        · linear_combination r7039
        · linear_combination r7040
    simpa [base, twice, triple, digit111] using hraw
  have hhigh : rho 27 =
      Bool.toZMod bits[26]! := by
    simpa only using rho_bit_of_map rho bits hbits 26 (by decide +kernel)
  have hlow : rho 26 =
      Bool.toZMod bits[25]! := by
    simpa only using rho_bit_of_map rho bits hbits 25 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[26]! bits[25]! (base rho) (twice rho) (triple rho)
    (digit111 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit111 rho) := by
    rw [hdigit]
    cases bits[26]! <;> cases bits[25]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted111 rho) (digit111 rho) (acc112 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7041) (rho 7042) (rho 7044 + rho 7045) ((1 : F) + rho 7047 + rho 7048)
      (rho 7049) (rho 7050) (rho 7051) (rho 7052) (rho 7053) (rho 7054)
      (by simpa [shifted111] using hshift2On)
      (by simpa [digit111] using hdigitOn)
      (by linear_combination r7041)
      (by linear_combination r7042)
      (by linear_combination r7043)
      (by linear_combination r7044)
      (by linear_combination r7045)
      (by linear_combination r7046)
    simpa [shifted111, digit111, acc112] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc112 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted111 rho) (digit111 rho) (acc112 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted111 rho) (digit111 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 27) (rho 26)
      (base rho) (twice rho) (triple rho) (acc111 rho)
      (acc112 rho) :=
    ⟨shiftOnce111 rho, shifted111 rho, digit111 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window112 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc112 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[24]! (scalarBits rho)[23]!
        (base rho) (twice rho) (triple rho) (acc112 rho)
        (acc113 rho) ∧
      EdwardsBridge.onCurve (acc113 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p88, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart88 at p88
  rcases p88 with ⟨_, _, _, _, _, _, _, r7047, r7048, r7049, r7050, r7051, r7052, r7053, r7054, r7055, r7056, r7057, r7058, r7059, r7060, r7061, r7062, r7063, r7064, r7065, r7066, r7067, r7068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7047 at r7047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7048 at r7048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7049 at r7049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7050 at r7050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7051 at r7051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7052 at r7052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7053 at r7053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7054 at r7054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7055 at r7055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7056 at r7056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7057 at r7057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7058 at r7058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7059 at r7059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7060 at r7060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7061 at r7061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7062 at r7062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7063 at r7063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7064 at r7064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7065 at r7065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7066 at r7066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7067 at r7067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7068 at r7068
  have hshift1 : EdwardsBridge.doubleSpec (acc112 rho) (shiftOnce112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7053) (rho 7054) (rho 7055) (rho 7056) (rho 7057) (rho 7058) (rho 7059)
      (by simpa [acc112] using hacc)
      (by linear_combination r7047)
      (by linear_combination r7048)
      (by linear_combination r7049)
      (by linear_combination r7050)
      (by linear_combination r7051)
    simpa [acc112, shiftOnce112] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc112 rho) (shiftOnce112 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc112 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce112 rho) (shifted112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7058) (rho 7059) (rho 7060) (rho 7061) (rho 7062) (rho 7063) (rho 7064)
      (by simpa [shiftOnce112] using hshift1On)
      (by linear_combination r7052)
      (by linear_combination r7053)
      (by linear_combination r7054)
      (by linear_combination r7055)
      (by linear_combination r7056)
    simpa [shiftOnce112, shifted112] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce112 rho) (shifted112 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce112 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 25) (rho 24)
      (base rho) (twice rho) (triple rho) (digit112 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 25) (rho 24)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7066 + rho 7067, (1 : F) + rho 7069 + rho 7070⟩ := by
      constructor
      · refine ⟨(rho 7065 + (rho 4577) - (0)), rho 7066, ?_, ?_, ?_⟩
        · linear_combination r7057 - (rho 24) * order_cast_zero
        · linear_combination r7058
        · linear_combination r7059
      · refine ⟨(rho 7068 + (rho 4578) - ((1 : F))), rho 7069, ?_, ?_, ?_⟩
        · linear_combination r7060 - (rho 24) * order_cast_zero
        · linear_combination r7061
        · linear_combination r7062
    simpa [base, twice, triple, digit112] using hraw
  have hhigh : rho 25 =
      Bool.toZMod bits[24]! := by
    simpa only using rho_bit_of_map rho bits hbits 24 (by decide +kernel)
  have hlow : rho 24 =
      Bool.toZMod bits[23]! := by
    simpa only using rho_bit_of_map rho bits hbits 23 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[24]! bits[23]! (base rho) (twice rho) (triple rho)
    (digit112 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit112 rho) := by
    rw [hdigit]
    cases bits[24]! <;> cases bits[23]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted112 rho) (digit112 rho) (acc113 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7063) (rho 7064) (rho 7066 + rho 7067) ((1 : F) + rho 7069 + rho 7070)
      (rho 7071) (rho 7072) (rho 7073) (rho 7074) (rho 7075) (rho 7076)
      (by simpa [shifted112] using hshift2On)
      (by simpa [digit112] using hdigitOn)
      (by linear_combination r7063)
      (by linear_combination r7064)
      (by linear_combination r7065)
      (by linear_combination r7066)
      (by linear_combination r7067)
      (by linear_combination r7068)
    simpa [shifted112, digit112, acc113] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc113 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted112 rho) (digit112 rho) (acc113 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted112 rho) (digit112 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 25) (rho 24)
      (base rho) (twice rho) (triple rho) (acc112 rho)
      (acc113 rho) :=
    ⟨shiftOnce112 rho, shifted112 rho, digit112 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window113 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc113 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[22]! (scalarBits rho)[21]!
        (base rho) (twice rho) (triple rho) (acc113 rho)
        (acc114 rho) ∧
      EdwardsBridge.onCurve (acc114 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p88, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart88 at p88
  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7069, r7070, r7071, r7072, r7073, r7074, r7075, r7076, r7077, r7078, r7079, r7080, r7081, r7082, r7083, r7084, r7085, r7086, r7087, r7088, r7089, r7090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7069 at r7069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7070 at r7070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7071 at r7071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7072 at r7072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7073 at r7073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7074 at r7074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7075 at r7075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7076 at r7076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7077 at r7077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7078 at r7078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7079 at r7079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7080 at r7080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7081 at r7081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7082 at r7082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7083 at r7083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7084 at r7084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7085 at r7085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7086 at r7086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7087 at r7087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7088 at r7088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7089 at r7089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7090 at r7090
  have hshift1 : EdwardsBridge.doubleSpec (acc113 rho) (shiftOnce113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7075) (rho 7076) (rho 7077) (rho 7078) (rho 7079) (rho 7080) (rho 7081)
      (by simpa [acc113] using hacc)
      (by linear_combination r7069)
      (by linear_combination r7070)
      (by linear_combination r7071)
      (by linear_combination r7072)
      (by linear_combination r7073)
    simpa [acc113, shiftOnce113] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc113 rho) (shiftOnce113 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc113 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce113 rho) (shifted113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7080) (rho 7081) (rho 7082) (rho 7083) (rho 7084) (rho 7085) (rho 7086)
      (by simpa [shiftOnce113] using hshift1On)
      (by linear_combination r7074)
      (by linear_combination r7075)
      (by linear_combination r7076)
      (by linear_combination r7077)
      (by linear_combination r7078)
    simpa [shiftOnce113, shifted113] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce113 rho) (shifted113 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce113 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 23) (rho 22)
      (base rho) (twice rho) (triple rho) (digit113 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 23) (rho 22)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7088 + rho 7089, (1 : F) + rho 7091 + rho 7092⟩ := by
      constructor
      · refine ⟨(rho 7087 + (rho 4577) - (0)), rho 7088, ?_, ?_, ?_⟩
        · linear_combination r7079 - (rho 22) * order_cast_zero
        · linear_combination r7080
        · linear_combination r7081
      · refine ⟨(rho 7090 + (rho 4578) - ((1 : F))), rho 7091, ?_, ?_, ?_⟩
        · linear_combination r7082 - (rho 22) * order_cast_zero
        · linear_combination r7083
        · linear_combination r7084
    simpa [base, twice, triple, digit113] using hraw
  have hhigh : rho 23 =
      Bool.toZMod bits[22]! := by
    simpa only using rho_bit_of_map rho bits hbits 22 (by decide +kernel)
  have hlow : rho 22 =
      Bool.toZMod bits[21]! := by
    simpa only using rho_bit_of_map rho bits hbits 21 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[22]! bits[21]! (base rho) (twice rho) (triple rho)
    (digit113 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit113 rho) := by
    rw [hdigit]
    cases bits[22]! <;> cases bits[21]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted113 rho) (digit113 rho) (acc114 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7085) (rho 7086) (rho 7088 + rho 7089) ((1 : F) + rho 7091 + rho 7092)
      (rho 7093) (rho 7094) (rho 7095) (rho 7096) (rho 7097) (rho 7098)
      (by simpa [shifted113] using hshift2On)
      (by simpa [digit113] using hdigitOn)
      (by linear_combination r7085)
      (by linear_combination r7086)
      (by linear_combination r7087)
      (by linear_combination r7088)
      (by linear_combination r7089)
      (by linear_combination r7090)
    simpa [shifted113, digit113, acc114] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc114 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted113 rho) (digit113 rho) (acc114 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted113 rho) (digit113 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 23) (rho 22)
      (base rho) (twice rho) (triple rho) (acc113 rho)
      (acc114 rho) :=
    ⟨shiftOnce113 rho, shifted113 rho, digit113 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
