import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window18 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc18 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[212]! (scalarBits rho)[211]!
        (base rho) (twice rho) (triple rho) (acc18 rho)
        (acc19 rho) ∧
      EdwardsBridge.onCurve (acc19 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, r4999, r5000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4979 at r4979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4980 at r4980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4981 at r4981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4982 at r4982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4983 at r4983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4984 at r4984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4985 at r4985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4986 at r4986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4987 at r4987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4988 at r4988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4989 at r4989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4990 at r4990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4991 at r4991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4992 at r4992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4993 at r4993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4994 at r4994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4995 at r4995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4996 at r4996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4997 at r4997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4998 at r4998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4999 at r4999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5000 at r5000
  have hshift1 : EdwardsBridge.doubleSpec (acc18 rho) (shiftOnce18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4985) (rho 4986) (rho 4987) (rho 4988) (rho 4989) (rho 4990) (rho 4991)
      (by simpa [acc18] using hacc)
      (by linear_combination r4979)
      (by linear_combination r4980)
      (by linear_combination r4981)
      (by linear_combination r4982)
      (by linear_combination r4983)
    simpa [acc18, shiftOnce18] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc18 rho) (shiftOnce18 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc18 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce18 rho) (shifted18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4990) (rho 4991) (rho 4992) (rho 4993) (rho 4994) (rho 4995) (rho 4996)
      (by simpa [shiftOnce18] using hshift1On)
      (by linear_combination r4984)
      (by linear_combination r4985)
      (by linear_combination r4986)
      (by linear_combination r4987)
      (by linear_combination r4988)
    simpa [shiftOnce18, shifted18] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce18 rho) (shifted18 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce18 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 213) (rho 212)
      (base rho) (twice rho) (triple rho) (digit18 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 213) (rho 212)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4998 + rho 4999, (1 : F) + rho 5001 + rho 5002⟩ := by
      constructor
      · refine ⟨(rho 4997 + (rho 4577) - (0)), rho 4998, ?_, ?_, ?_⟩
        · linear_combination r4989 - (rho 212) * order_cast_zero
        · linear_combination r4990
        · linear_combination r4991
      · refine ⟨(rho 5000 + (rho 4578) - ((1 : F))), rho 5001, ?_, ?_, ?_⟩
        · linear_combination r4992 - (rho 212) * order_cast_zero
        · linear_combination r4993
        · linear_combination r4994
    simpa [base, twice, triple, digit18] using hraw
  have hhigh : rho 213 =
      Bool.toZMod bits[212]! := by
    simpa only using rho_bit_of_map rho bits hbits 212 (by decide +kernel)
  have hlow : rho 212 =
      Bool.toZMod bits[211]! := by
    simpa only using rho_bit_of_map rho bits hbits 211 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[212]! bits[211]! (base rho) (twice rho) (triple rho)
    (digit18 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit18 rho) := by
    rw [hdigit]
    cases bits[212]! <;> cases bits[211]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted18 rho) (digit18 rho) (acc19 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4995) (rho 4996) (rho 4998 + rho 4999) ((1 : F) + rho 5001 + rho 5002)
      (rho 5003) (rho 5004) (rho 5005) (rho 5006) (rho 5007) (rho 5008)
      (by simpa [shifted18] using hshift2On)
      (by simpa [digit18] using hdigitOn)
      (by linear_combination r4995)
      (by linear_combination r4996)
      (by linear_combination r4997)
      (by linear_combination r4998)
      (by linear_combination r4999)
      (by linear_combination r5000)
    simpa [shifted18, digit18, acc19] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc19 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted18 rho) (digit18 rho) (acc19 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted18 rho) (digit18 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 213) (rho 212)
      (base rho) (twice rho) (triple rho) (acc18 rho)
      (acc19 rho) :=
    ⟨shiftOnce18 rho, shifted18 rho, digit18 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window19 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc19 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[210]! (scalarBits rho)[209]!
        (base rho) (twice rho) (triple rho) (acc19 rho)
        (acc20 rho) ∧
      EdwardsBridge.onCurve (acc20 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5001 at r5001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5002 at r5002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5003 at r5003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5004 at r5004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5005 at r5005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5006 at r5006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5007 at r5007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5008 at r5008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5009 at r5009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5010 at r5010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5011 at r5011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5012 at r5012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5013 at r5013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5014 at r5014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5015 at r5015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5016 at r5016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5017 at r5017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5018 at r5018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5019 at r5019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5020 at r5020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5021 at r5021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5022 at r5022
  have hshift1 : EdwardsBridge.doubleSpec (acc19 rho) (shiftOnce19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5007) (rho 5008) (rho 5009) (rho 5010) (rho 5011) (rho 5012) (rho 5013)
      (by simpa [acc19] using hacc)
      (by linear_combination r5001)
      (by linear_combination r5002)
      (by linear_combination r5003)
      (by linear_combination r5004)
      (by linear_combination r5005)
    simpa [acc19, shiftOnce19] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc19 rho) (shiftOnce19 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc19 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce19 rho) (shifted19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5012) (rho 5013) (rho 5014) (rho 5015) (rho 5016) (rho 5017) (rho 5018)
      (by simpa [shiftOnce19] using hshift1On)
      (by linear_combination r5006)
      (by linear_combination r5007)
      (by linear_combination r5008)
      (by linear_combination r5009)
      (by linear_combination r5010)
    simpa [shiftOnce19, shifted19] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce19 rho) (shifted19 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce19 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 211) (rho 210)
      (base rho) (twice rho) (triple rho) (digit19 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 211) (rho 210)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5020 + rho 5021, (1 : F) + rho 5023 + rho 5024⟩ := by
      constructor
      · refine ⟨(rho 5019 + (rho 4577) - (0)), rho 5020, ?_, ?_, ?_⟩
        · linear_combination r5011 - (rho 210) * order_cast_zero
        · linear_combination r5012
        · linear_combination r5013
      · refine ⟨(rho 5022 + (rho 4578) - ((1 : F))), rho 5023, ?_, ?_, ?_⟩
        · linear_combination r5014 - (rho 210) * order_cast_zero
        · linear_combination r5015
        · linear_combination r5016
    simpa [base, twice, triple, digit19] using hraw
  have hhigh : rho 211 =
      Bool.toZMod bits[210]! := by
    simpa only using rho_bit_of_map rho bits hbits 210 (by decide +kernel)
  have hlow : rho 210 =
      Bool.toZMod bits[209]! := by
    simpa only using rho_bit_of_map rho bits hbits 209 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[210]! bits[209]! (base rho) (twice rho) (triple rho)
    (digit19 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit19 rho) := by
    rw [hdigit]
    cases bits[210]! <;> cases bits[209]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted19 rho) (digit19 rho) (acc20 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5017) (rho 5018) (rho 5020 + rho 5021) ((1 : F) + rho 5023 + rho 5024)
      (rho 5025) (rho 5026) (rho 5027) (rho 5028) (rho 5029) (rho 5030)
      (by simpa [shifted19] using hshift2On)
      (by simpa [digit19] using hdigitOn)
      (by linear_combination r5017)
      (by linear_combination r5018)
      (by linear_combination r5019)
      (by linear_combination r5020)
      (by linear_combination r5021)
      (by linear_combination r5022)
    simpa [shifted19, digit19, acc20] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc20 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted19 rho) (digit19 rho) (acc20 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted19 rho) (digit19 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 211) (rho 210)
      (base rho) (twice rho) (triple rho) (acc19 rho)
      (acc20 rho) :=
    ⟨shiftOnce19 rho, shifted19 rho, digit19 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc20 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[208]! (scalarBits rho)[207]!
        (base rho) (twice rho) (triple rho) (acc20 rho)
        (acc21 rho) ∧
      EdwardsBridge.onCurve (acc21 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5023, r5024, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart63 at p63
  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5023 at r5023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5024 at r5024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5025 at r5025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5026 at r5026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5027 at r5027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5028 at r5028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5029 at r5029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5030 at r5030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5031 at r5031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5032 at r5032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5033 at r5033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5034 at r5034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5035 at r5035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5036 at r5036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5037 at r5037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5038 at r5038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5039 at r5039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5040 at r5040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5041 at r5041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5042 at r5042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5043 at r5043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5044 at r5044
  have hshift1 : EdwardsBridge.doubleSpec (acc20 rho) (shiftOnce20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5029) (rho 5030) (rho 5031) (rho 5032) (rho 5033) (rho 5034) (rho 5035)
      (by simpa [acc20] using hacc)
      (by linear_combination r5023)
      (by linear_combination r5024)
      (by linear_combination r5025)
      (by linear_combination r5026)
      (by linear_combination r5027)
    simpa [acc20, shiftOnce20] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc20 rho) (shiftOnce20 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc20 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce20 rho) (shifted20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5034) (rho 5035) (rho 5036) (rho 5037) (rho 5038) (rho 5039) (rho 5040)
      (by simpa [shiftOnce20] using hshift1On)
      (by linear_combination r5028)
      (by linear_combination r5029)
      (by linear_combination r5030)
      (by linear_combination r5031)
      (by linear_combination r5032)
    simpa [shiftOnce20, shifted20] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce20 rho) (shifted20 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce20 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 209) (rho 208)
      (base rho) (twice rho) (triple rho) (digit20 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 209) (rho 208)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5042 + rho 5043, (1 : F) + rho 5045 + rho 5046⟩ := by
      constructor
      · refine ⟨(rho 5041 + (rho 4577) - (0)), rho 5042, ?_, ?_, ?_⟩
        · linear_combination r5033 - (rho 208) * order_cast_zero
        · linear_combination r5034
        · linear_combination r5035
      · refine ⟨(rho 5044 + (rho 4578) - ((1 : F))), rho 5045, ?_, ?_, ?_⟩
        · linear_combination r5036 - (rho 208) * order_cast_zero
        · linear_combination r5037
        · linear_combination r5038
    simpa [base, twice, triple, digit20] using hraw
  have hhigh : rho 209 =
      Bool.toZMod bits[208]! := by
    simpa only using rho_bit_of_map rho bits hbits 208 (by decide +kernel)
  have hlow : rho 208 =
      Bool.toZMod bits[207]! := by
    simpa only using rho_bit_of_map rho bits hbits 207 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[208]! bits[207]! (base rho) (twice rho) (triple rho)
    (digit20 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit20 rho) := by
    rw [hdigit]
    cases bits[208]! <;> cases bits[207]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted20 rho) (digit20 rho) (acc21 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5039) (rho 5040) (rho 5042 + rho 5043) ((1 : F) + rho 5045 + rho 5046)
      (rho 5047) (rho 5048) (rho 5049) (rho 5050) (rho 5051) (rho 5052)
      (by simpa [shifted20] using hshift2On)
      (by simpa [digit20] using hdigitOn)
      (by linear_combination r5039)
      (by linear_combination r5040)
      (by linear_combination r5041)
      (by linear_combination r5042)
      (by linear_combination r5043)
      (by linear_combination r5044)
    simpa [shifted20, digit20, acc21] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc21 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted20 rho) (digit20 rho) (acc21 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted20 rho) (digit20 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 209) (rho 208)
      (base rho) (twice rho) (triple rho) (acc20 rho)
      (acc21 rho) :=
    ⟨shiftOnce20 rho, shifted20 rho, digit20 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window21 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc21 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[206]! (scalarBits rho)[205]!
        (base rho) (twice rho) (triple rho) (acc21 rho)
        (acc22 rho) ∧
      EdwardsBridge.onCurve (acc22 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5045 at r5045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5046 at r5046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5047 at r5047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5048 at r5048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5049 at r5049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5050 at r5050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5051 at r5051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5052 at r5052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5053 at r5053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5054 at r5054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5055 at r5055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5056 at r5056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5057 at r5057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5058 at r5058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5059 at r5059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5060 at r5060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5061 at r5061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5062 at r5062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5063 at r5063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5064 at r5064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5065 at r5065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5066 at r5066
  have hshift1 : EdwardsBridge.doubleSpec (acc21 rho) (shiftOnce21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5051) (rho 5052) (rho 5053) (rho 5054) (rho 5055) (rho 5056) (rho 5057)
      (by simpa [acc21] using hacc)
      (by linear_combination r5045)
      (by linear_combination r5046)
      (by linear_combination r5047)
      (by linear_combination r5048)
      (by linear_combination r5049)
    simpa [acc21, shiftOnce21] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc21 rho) (shiftOnce21 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc21 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce21 rho) (shifted21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5056) (rho 5057) (rho 5058) (rho 5059) (rho 5060) (rho 5061) (rho 5062)
      (by simpa [shiftOnce21] using hshift1On)
      (by linear_combination r5050)
      (by linear_combination r5051)
      (by linear_combination r5052)
      (by linear_combination r5053)
      (by linear_combination r5054)
    simpa [shiftOnce21, shifted21] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce21 rho) (shifted21 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce21 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 207) (rho 206)
      (base rho) (twice rho) (triple rho) (digit21 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 207) (rho 206)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5064 + rho 5065, (1 : F) + rho 5067 + rho 5068⟩ := by
      constructor
      · refine ⟨(rho 5063 + (rho 4577) - (0)), rho 5064, ?_, ?_, ?_⟩
        · linear_combination r5055 - (rho 206) * order_cast_zero
        · linear_combination r5056
        · linear_combination r5057
      · refine ⟨(rho 5066 + (rho 4578) - ((1 : F))), rho 5067, ?_, ?_, ?_⟩
        · linear_combination r5058 - (rho 206) * order_cast_zero
        · linear_combination r5059
        · linear_combination r5060
    simpa [base, twice, triple, digit21] using hraw
  have hhigh : rho 207 =
      Bool.toZMod bits[206]! := by
    simpa only using rho_bit_of_map rho bits hbits 206 (by decide +kernel)
  have hlow : rho 206 =
      Bool.toZMod bits[205]! := by
    simpa only using rho_bit_of_map rho bits hbits 205 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[206]! bits[205]! (base rho) (twice rho) (triple rho)
    (digit21 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit21 rho) := by
    rw [hdigit]
    cases bits[206]! <;> cases bits[205]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted21 rho) (digit21 rho) (acc22 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5061) (rho 5062) (rho 5064 + rho 5065) ((1 : F) + rho 5067 + rho 5068)
      (rho 5069) (rho 5070) (rho 5071) (rho 5072) (rho 5073) (rho 5074)
      (by simpa [shifted21] using hshift2On)
      (by simpa [digit21] using hdigitOn)
      (by linear_combination r5061)
      (by linear_combination r5062)
      (by linear_combination r5063)
      (by linear_combination r5064)
      (by linear_combination r5065)
      (by linear_combination r5066)
    simpa [shifted21, digit21, acc22] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc22 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted21 rho) (digit21 rho) (acc22 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted21 rho) (digit21 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 207) (rho 206)
      (base rho) (twice rho) (triple rho) (acc21 rho)
      (acc22 rho) :=
    ⟨shiftOnce21 rho, shifted21 rho, digit21 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window22 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc22 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[204]! (scalarBits rho)[203]!
        (base rho) (twice rho) (triple rho) (acc22 rho)
        (acc23 rho) ∧
      EdwardsBridge.onCurve (acc23 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5067 at r5067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5068 at r5068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5069 at r5069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5070 at r5070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5071 at r5071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5072 at r5072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5073 at r5073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5074 at r5074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5075 at r5075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5076 at r5076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5077 at r5077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5078 at r5078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5079 at r5079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5080 at r5080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5081 at r5081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5082 at r5082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5083 at r5083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5084 at r5084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5085 at r5085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5086 at r5086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5087 at r5087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5088 at r5088
  have hshift1 : EdwardsBridge.doubleSpec (acc22 rho) (shiftOnce22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5073) (rho 5074) (rho 5075) (rho 5076) (rho 5077) (rho 5078) (rho 5079)
      (by simpa [acc22] using hacc)
      (by linear_combination r5067)
      (by linear_combination r5068)
      (by linear_combination r5069)
      (by linear_combination r5070)
      (by linear_combination r5071)
    simpa [acc22, shiftOnce22] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc22 rho) (shiftOnce22 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc22 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce22 rho) (shifted22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5078) (rho 5079) (rho 5080) (rho 5081) (rho 5082) (rho 5083) (rho 5084)
      (by simpa [shiftOnce22] using hshift1On)
      (by linear_combination r5072)
      (by linear_combination r5073)
      (by linear_combination r5074)
      (by linear_combination r5075)
      (by linear_combination r5076)
    simpa [shiftOnce22, shifted22] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce22 rho) (shifted22 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce22 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 205) (rho 204)
      (base rho) (twice rho) (triple rho) (digit22 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 205) (rho 204)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5086 + rho 5087, (1 : F) + rho 5089 + rho 5090⟩ := by
      constructor
      · refine ⟨(rho 5085 + (rho 4577) - (0)), rho 5086, ?_, ?_, ?_⟩
        · linear_combination r5077 - (rho 204) * order_cast_zero
        · linear_combination r5078
        · linear_combination r5079
      · refine ⟨(rho 5088 + (rho 4578) - ((1 : F))), rho 5089, ?_, ?_, ?_⟩
        · linear_combination r5080 - (rho 204) * order_cast_zero
        · linear_combination r5081
        · linear_combination r5082
    simpa [base, twice, triple, digit22] using hraw
  have hhigh : rho 205 =
      Bool.toZMod bits[204]! := by
    simpa only using rho_bit_of_map rho bits hbits 204 (by decide +kernel)
  have hlow : rho 204 =
      Bool.toZMod bits[203]! := by
    simpa only using rho_bit_of_map rho bits hbits 203 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[204]! bits[203]! (base rho) (twice rho) (triple rho)
    (digit22 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit22 rho) := by
    rw [hdigit]
    cases bits[204]! <;> cases bits[203]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted22 rho) (digit22 rho) (acc23 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5083) (rho 5084) (rho 5086 + rho 5087) ((1 : F) + rho 5089 + rho 5090)
      (rho 5091) (rho 5092) (rho 5093) (rho 5094) (rho 5095) (rho 5096)
      (by simpa [shifted22] using hshift2On)
      (by simpa [digit22] using hdigitOn)
      (by linear_combination r5083)
      (by linear_combination r5084)
      (by linear_combination r5085)
      (by linear_combination r5086)
      (by linear_combination r5087)
      (by linear_combination r5088)
    simpa [shifted22, digit22, acc23] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc23 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted22 rho) (digit22 rho) (acc23 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted22 rho) (digit22 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 205) (rho 204)
      (base rho) (twice rho) (triple rho) (acc22 rho)
      (acc23 rho) :=
    ⟨shiftOnce22 rho, shifted22 rho, digit22 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window23 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc23 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[202]! (scalarBits rho)[201]!
        (base rho) (twice rho) (triple rho) (acc23 rho)
        (acc24 rho) ∧
      EdwardsBridge.onCurve (acc24 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5089 at r5089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5090 at r5090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5091 at r5091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5092 at r5092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5093 at r5093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5094 at r5094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5095 at r5095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5096 at r5096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5097 at r5097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5098 at r5098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5099 at r5099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5100 at r5100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5101 at r5101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5102 at r5102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5103 at r5103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5104 at r5104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5105 at r5105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5106 at r5106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5107 at r5107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5108 at r5108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5109 at r5109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5110 at r5110
  have hshift1 : EdwardsBridge.doubleSpec (acc23 rho) (shiftOnce23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5095) (rho 5096) (rho 5097) (rho 5098) (rho 5099) (rho 5100) (rho 5101)
      (by simpa [acc23] using hacc)
      (by linear_combination r5089)
      (by linear_combination r5090)
      (by linear_combination r5091)
      (by linear_combination r5092)
      (by linear_combination r5093)
    simpa [acc23, shiftOnce23] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc23 rho) (shiftOnce23 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc23 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce23 rho) (shifted23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5100) (rho 5101) (rho 5102) (rho 5103) (rho 5104) (rho 5105) (rho 5106)
      (by simpa [shiftOnce23] using hshift1On)
      (by linear_combination r5094)
      (by linear_combination r5095)
      (by linear_combination r5096)
      (by linear_combination r5097)
      (by linear_combination r5098)
    simpa [shiftOnce23, shifted23] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce23 rho) (shifted23 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce23 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 203) (rho 202)
      (base rho) (twice rho) (triple rho) (digit23 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 203) (rho 202)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5108 + rho 5109, (1 : F) + rho 5111 + rho 5112⟩ := by
      constructor
      · refine ⟨(rho 5107 + (rho 4577) - (0)), rho 5108, ?_, ?_, ?_⟩
        · linear_combination r5099 - (rho 202) * order_cast_zero
        · linear_combination r5100
        · linear_combination r5101
      · refine ⟨(rho 5110 + (rho 4578) - ((1 : F))), rho 5111, ?_, ?_, ?_⟩
        · linear_combination r5102 - (rho 202) * order_cast_zero
        · linear_combination r5103
        · linear_combination r5104
    simpa [base, twice, triple, digit23] using hraw
  have hhigh : rho 203 =
      Bool.toZMod bits[202]! := by
    simpa only using rho_bit_of_map rho bits hbits 202 (by decide +kernel)
  have hlow : rho 202 =
      Bool.toZMod bits[201]! := by
    simpa only using rho_bit_of_map rho bits hbits 201 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[202]! bits[201]! (base rho) (twice rho) (triple rho)
    (digit23 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit23 rho) := by
    rw [hdigit]
    cases bits[202]! <;> cases bits[201]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted23 rho) (digit23 rho) (acc24 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5105) (rho 5106) (rho 5108 + rho 5109) ((1 : F) + rho 5111 + rho 5112)
      (rho 5113) (rho 5114) (rho 5115) (rho 5116) (rho 5117) (rho 5118)
      (by simpa [shifted23] using hshift2On)
      (by simpa [digit23] using hdigitOn)
      (by linear_combination r5105)
      (by linear_combination r5106)
      (by linear_combination r5107)
      (by linear_combination r5108)
      (by linear_combination r5109)
      (by linear_combination r5110)
    simpa [shifted23, digit23, acc24] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc24 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted23 rho) (digit23 rho) (acc24 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted23 rho) (digit23 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 203) (rho 202)
      (base rho) (twice rho) (triple rho) (acc23 rho)
      (acc24 rho) :=
    ⟨shiftOnce23 rho, shifted23 rho, digit23 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
