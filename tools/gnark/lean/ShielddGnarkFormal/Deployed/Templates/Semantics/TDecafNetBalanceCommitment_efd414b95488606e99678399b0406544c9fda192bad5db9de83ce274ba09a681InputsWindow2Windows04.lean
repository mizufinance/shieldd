import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window24 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc24 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[78]! (scalarBits rho)[77]!
        (base rho) (twice rho) (triple rho) (acc24 rho)
        (acc25 rho) ∧
      EdwardsBridge.onCurve (acc25 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1967 at r1967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1968 at r1968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1969 at r1969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1970 at r1970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1971 at r1971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1972 at r1972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1973 at r1973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1974 at r1974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1975 at r1975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1976 at r1976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1977 at r1977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1978 at r1978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1979 at r1979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1980 at r1980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1981 at r1981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1982 at r1982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1983 at r1983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1984 at r1984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1985 at r1985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1986 at r1986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1987 at r1987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1988 at r1988
  have hshift1 : EdwardsBridge.doubleSpec (acc24 rho) (shiftOnce24 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1792) (rho 1793) (rho 1794) (rho 1795) (rho 1796) (rho 1797) (rho 1798)
      (by simpa [acc24] using hacc)
      (by linear_combination r1967)
      (by linear_combination r1968)
      (by linear_combination r1969)
      (by linear_combination r1970)
      (by linear_combination r1971)
    simpa [acc24, shiftOnce24] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce24 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc24 rho) (shiftOnce24 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc24 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce24 rho) (shifted24 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1797) (rho 1798) (rho 1799) (rho 1800) (rho 1801) (rho 1802) (rho 1803)
      (by simpa [shiftOnce24] using hshift1On)
      (by linear_combination r1972)
      (by linear_combination r1973)
      (by linear_combination r1974)
      (by linear_combination r1975)
      (by linear_combination r1976)
    simpa [shiftOnce24, shifted24] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted24 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce24 rho) (shifted24 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce24 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1198) (rho 1197)
      (base rho) (twice rho) (triple rho) (digit24 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1198) (rho 1197)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1805 + rho 1806, (1 : F) + rho 1808 + rho 1809⟩ := by
      constructor
      · refine ⟨(rho 1804 + (rho 1252) - (0)), rho 1805, ?_, ?_, ?_⟩
        · linear_combination r1977
        · linear_combination r1978
        · linear_combination r1979
      · refine ⟨(rho 1807 + (rho 1253) - ((1 : F))), rho 1808, ?_, ?_, ?_⟩
        · linear_combination r1980
        · linear_combination r1981
        · linear_combination r1982
    simpa [base, twice, triple, digit24] using hraw
  have hhigh : rho 1198 =
      Bool.toZMod bits[78]! := by
    simpa only using rho_bit_of_map rho bits hbits 78 (by decide +kernel)
  have hlow : rho 1197 =
      Bool.toZMod bits[77]! := by
    simpa only using rho_bit_of_map rho bits hbits 77 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[78]! bits[77]! (base rho) (twice rho) (triple rho)
    (digit24 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit24 rho) := by
    rw [hdigit]
    cases bits[78]! <;> cases bits[77]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted24 rho) (digit24 rho) (acc25 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1802) (rho 1803) (rho 1805 + rho 1806) ((1 : F) + rho 1808 + rho 1809)
      (rho 1810) (rho 1811) (rho 1812) (rho 1813) (rho 1814) (rho 1815)
      (by simpa [shifted24] using hshift2On)
      (by simpa [digit24] using hdigitOn)
      (by linear_combination r1983)
      (by linear_combination r1984)
      (by linear_combination r1985)
      (by linear_combination r1986)
      (by linear_combination r1987)
      (by linear_combination r1988)
    simpa [shifted24, digit24, acc25] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc25 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted24 rho) (digit24 rho) (acc25 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted24 rho) (digit24 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1198) (rho 1197)
      (base rho) (twice rho) (triple rho) (acc24 rho)
      (acc25 rho) :=
    ⟨shiftOnce24 rho, shifted24 rho, digit24 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window25 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc25 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[76]! (scalarBits rho)[75]!
        (base rho) (twice rho) (triple rho) (acc25 rho)
        (acc26 rho) ∧
      EdwardsBridge.onCurve (acc26 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1989, r1990, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart25 at p25
  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008, r2009, r2010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1989 at r1989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1990 at r1990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1991 at r1991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1992 at r1992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1993 at r1993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1994 at r1994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1995 at r1995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1996 at r1996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1997 at r1997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1998 at r1998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1999 at r1999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2000 at r2000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2001 at r2001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2002 at r2002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2003 at r2003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2004 at r2004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2005 at r2005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2006 at r2006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2007 at r2007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2008 at r2008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2009 at r2009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2010 at r2010
  have hshift1 : EdwardsBridge.doubleSpec (acc25 rho) (shiftOnce25 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1814) (rho 1815) (rho 1816) (rho 1817) (rho 1818) (rho 1819) (rho 1820)
      (by simpa [acc25] using hacc)
      (by linear_combination r1989)
      (by linear_combination r1990)
      (by linear_combination r1991)
      (by linear_combination r1992)
      (by linear_combination r1993)
    simpa [acc25, shiftOnce25] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce25 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc25 rho) (shiftOnce25 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc25 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce25 rho) (shifted25 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1819) (rho 1820) (rho 1821) (rho 1822) (rho 1823) (rho 1824) (rho 1825)
      (by simpa [shiftOnce25] using hshift1On)
      (by linear_combination r1994)
      (by linear_combination r1995)
      (by linear_combination r1996)
      (by linear_combination r1997)
      (by linear_combination r1998)
    simpa [shiftOnce25, shifted25] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted25 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce25 rho) (shifted25 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce25 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1196) (rho 1195)
      (base rho) (twice rho) (triple rho) (digit25 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1196) (rho 1195)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1827 + rho 1828, (1 : F) + rho 1830 + rho 1831⟩ := by
      constructor
      · refine ⟨(rho 1826 + (rho 1252) - (0)), rho 1827, ?_, ?_, ?_⟩
        · linear_combination r1999
        · linear_combination r2000
        · linear_combination r2001
      · refine ⟨(rho 1829 + (rho 1253) - ((1 : F))), rho 1830, ?_, ?_, ?_⟩
        · linear_combination r2002
        · linear_combination r2003
        · linear_combination r2004
    simpa [base, twice, triple, digit25] using hraw
  have hhigh : rho 1196 =
      Bool.toZMod bits[76]! := by
    simpa only using rho_bit_of_map rho bits hbits 76 (by decide +kernel)
  have hlow : rho 1195 =
      Bool.toZMod bits[75]! := by
    simpa only using rho_bit_of_map rho bits hbits 75 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[76]! bits[75]! (base rho) (twice rho) (triple rho)
    (digit25 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit25 rho) := by
    rw [hdigit]
    cases bits[76]! <;> cases bits[75]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted25 rho) (digit25 rho) (acc26 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1824) (rho 1825) (rho 1827 + rho 1828) ((1 : F) + rho 1830 + rho 1831)
      (rho 1832) (rho 1833) (rho 1834) (rho 1835) (rho 1836) (rho 1837)
      (by simpa [shifted25] using hshift2On)
      (by simpa [digit25] using hdigitOn)
      (by linear_combination r2005)
      (by linear_combination r2006)
      (by linear_combination r2007)
      (by linear_combination r2008)
      (by linear_combination r2009)
      (by linear_combination r2010)
    simpa [shifted25, digit25, acc26] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc26 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted25 rho) (digit25 rho) (acc26 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted25 rho) (digit25 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1196) (rho 1195)
      (base rho) (twice rho) (triple rho) (acc25 rho)
      (acc26 rho) :=
    ⟨shiftOnce25 rho, shifted25 rho, digit25 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window26 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc26 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[74]! (scalarBits rho)[73]!
        (base rho) (twice rho) (triple rho) (acc26 rho)
        (acc27 rho) ∧
      EdwardsBridge.onCurve (acc27 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2011 at r2011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2012 at r2012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2013 at r2013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2014 at r2014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2015 at r2015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2016 at r2016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2017 at r2017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2018 at r2018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2019 at r2019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2020 at r2020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2021 at r2021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2022 at r2022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2023 at r2023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2024 at r2024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2025 at r2025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2026 at r2026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2027 at r2027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2028 at r2028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2029 at r2029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2030 at r2030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2031 at r2031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2032 at r2032
  have hshift1 : EdwardsBridge.doubleSpec (acc26 rho) (shiftOnce26 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1836) (rho 1837) (rho 1838) (rho 1839) (rho 1840) (rho 1841) (rho 1842)
      (by simpa [acc26] using hacc)
      (by linear_combination r2011)
      (by linear_combination r2012)
      (by linear_combination r2013)
      (by linear_combination r2014)
      (by linear_combination r2015)
    simpa [acc26, shiftOnce26] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce26 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc26 rho) (shiftOnce26 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc26 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce26 rho) (shifted26 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1841) (rho 1842) (rho 1843) (rho 1844) (rho 1845) (rho 1846) (rho 1847)
      (by simpa [shiftOnce26] using hshift1On)
      (by linear_combination r2016)
      (by linear_combination r2017)
      (by linear_combination r2018)
      (by linear_combination r2019)
      (by linear_combination r2020)
    simpa [shiftOnce26, shifted26] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted26 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce26 rho) (shifted26 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce26 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1194) (rho 1193)
      (base rho) (twice rho) (triple rho) (digit26 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1194) (rho 1193)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1849 + rho 1850, (1 : F) + rho 1852 + rho 1853⟩ := by
      constructor
      · refine ⟨(rho 1848 + (rho 1252) - (0)), rho 1849, ?_, ?_, ?_⟩
        · linear_combination r2021
        · linear_combination r2022
        · linear_combination r2023
      · refine ⟨(rho 1851 + (rho 1253) - ((1 : F))), rho 1852, ?_, ?_, ?_⟩
        · linear_combination r2024
        · linear_combination r2025
        · linear_combination r2026
    simpa [base, twice, triple, digit26] using hraw
  have hhigh : rho 1194 =
      Bool.toZMod bits[74]! := by
    simpa only using rho_bit_of_map rho bits hbits 74 (by decide +kernel)
  have hlow : rho 1193 =
      Bool.toZMod bits[73]! := by
    simpa only using rho_bit_of_map rho bits hbits 73 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[74]! bits[73]! (base rho) (twice rho) (triple rho)
    (digit26 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit26 rho) := by
    rw [hdigit]
    cases bits[74]! <;> cases bits[73]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted26 rho) (digit26 rho) (acc27 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1846) (rho 1847) (rho 1849 + rho 1850) ((1 : F) + rho 1852 + rho 1853)
      (rho 1854) (rho 1855) (rho 1856) (rho 1857) (rho 1858) (rho 1859)
      (by simpa [shifted26] using hshift2On)
      (by simpa [digit26] using hdigitOn)
      (by linear_combination r2027)
      (by linear_combination r2028)
      (by linear_combination r2029)
      (by linear_combination r2030)
      (by linear_combination r2031)
      (by linear_combination r2032)
    simpa [shifted26, digit26, acc27] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc27 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted26 rho) (digit26 rho) (acc27 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted26 rho) (digit26 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1194) (rho 1193)
      (base rho) (twice rho) (triple rho) (acc26 rho)
      (acc27 rho) :=
    ⟨shiftOnce26 rho, shifted26 rho, digit26 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window27 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc27 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[72]! (scalarBits rho)[71]!
        (base rho) (twice rho) (triple rho) (acc27 rho)
        (acc28 rho) ∧
      EdwardsBridge.onCurve (acc28 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2033 at r2033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2034 at r2034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2035 at r2035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2036 at r2036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2037 at r2037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2038 at r2038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2039 at r2039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2040 at r2040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2041 at r2041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2042 at r2042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2043 at r2043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2044 at r2044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2045 at r2045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2046 at r2046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2047 at r2047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2048 at r2048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2049 at r2049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2050 at r2050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2051 at r2051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2052 at r2052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2053 at r2053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2054 at r2054
  have hshift1 : EdwardsBridge.doubleSpec (acc27 rho) (shiftOnce27 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1858) (rho 1859) (rho 1860) (rho 1861) (rho 1862) (rho 1863) (rho 1864)
      (by simpa [acc27] using hacc)
      (by linear_combination r2033)
      (by linear_combination r2034)
      (by linear_combination r2035)
      (by linear_combination r2036)
      (by linear_combination r2037)
    simpa [acc27, shiftOnce27] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce27 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc27 rho) (shiftOnce27 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc27 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce27 rho) (shifted27 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1863) (rho 1864) (rho 1865) (rho 1866) (rho 1867) (rho 1868) (rho 1869)
      (by simpa [shiftOnce27] using hshift1On)
      (by linear_combination r2038)
      (by linear_combination r2039)
      (by linear_combination r2040)
      (by linear_combination r2041)
      (by linear_combination r2042)
    simpa [shiftOnce27, shifted27] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted27 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce27 rho) (shifted27 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce27 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1192) (rho 1191)
      (base rho) (twice rho) (triple rho) (digit27 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1192) (rho 1191)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1871 + rho 1872, (1 : F) + rho 1874 + rho 1875⟩ := by
      constructor
      · refine ⟨(rho 1870 + (rho 1252) - (0)), rho 1871, ?_, ?_, ?_⟩
        · linear_combination r2043
        · linear_combination r2044
        · linear_combination r2045
      · refine ⟨(rho 1873 + (rho 1253) - ((1 : F))), rho 1874, ?_, ?_, ?_⟩
        · linear_combination r2046
        · linear_combination r2047
        · linear_combination r2048
    simpa [base, twice, triple, digit27] using hraw
  have hhigh : rho 1192 =
      Bool.toZMod bits[72]! := by
    simpa only using rho_bit_of_map rho bits hbits 72 (by decide +kernel)
  have hlow : rho 1191 =
      Bool.toZMod bits[71]! := by
    simpa only using rho_bit_of_map rho bits hbits 71 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[72]! bits[71]! (base rho) (twice rho) (triple rho)
    (digit27 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit27 rho) := by
    rw [hdigit]
    cases bits[72]! <;> cases bits[71]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted27 rho) (digit27 rho) (acc28 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1868) (rho 1869) (rho 1871 + rho 1872) ((1 : F) + rho 1874 + rho 1875)
      (rho 1876) (rho 1877) (rho 1878) (rho 1879) (rho 1880) (rho 1881)
      (by simpa [shifted27] using hshift2On)
      (by simpa [digit27] using hdigitOn)
      (by linear_combination r2049)
      (by linear_combination r2050)
      (by linear_combination r2051)
      (by linear_combination r2052)
      (by linear_combination r2053)
      (by linear_combination r2054)
    simpa [shifted27, digit27, acc28] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc28 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted27 rho) (digit27 rho) (acc28 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted27 rho) (digit27 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1192) (rho 1191)
      (base rho) (twice rho) (triple rho) (acc27 rho)
      (acc28 rho) :=
    ⟨shiftOnce27 rho, shifted27 rho, digit27 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window28 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc28 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[70]! (scalarBits rho)[69]!
        (base rho) (twice rho) (triple rho) (acc28 rho)
        (acc29 rho) ∧
      EdwardsBridge.onCurve (acc29 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2055, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2055 at r2055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2056 at r2056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2057 at r2057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2058 at r2058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2059 at r2059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2060 at r2060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2061 at r2061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2062 at r2062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2063 at r2063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2064 at r2064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2065 at r2065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2066 at r2066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2067 at r2067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2068 at r2068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2069 at r2069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2070 at r2070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2071 at r2071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2072 at r2072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2073 at r2073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2074 at r2074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2075 at r2075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2076 at r2076
  have hshift1 : EdwardsBridge.doubleSpec (acc28 rho) (shiftOnce28 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1880) (rho 1881) (rho 1882) (rho 1883) (rho 1884) (rho 1885) (rho 1886)
      (by simpa [acc28] using hacc)
      (by linear_combination r2055)
      (by linear_combination r2056)
      (by linear_combination r2057)
      (by linear_combination r2058)
      (by linear_combination r2059)
    simpa [acc28, shiftOnce28] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce28 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc28 rho) (shiftOnce28 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc28 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce28 rho) (shifted28 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1885) (rho 1886) (rho 1887) (rho 1888) (rho 1889) (rho 1890) (rho 1891)
      (by simpa [shiftOnce28] using hshift1On)
      (by linear_combination r2060)
      (by linear_combination r2061)
      (by linear_combination r2062)
      (by linear_combination r2063)
      (by linear_combination r2064)
    simpa [shiftOnce28, shifted28] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted28 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce28 rho) (shifted28 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce28 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1190) (rho 1189)
      (base rho) (twice rho) (triple rho) (digit28 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1190) (rho 1189)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1893 + rho 1894, (1 : F) + rho 1896 + rho 1897⟩ := by
      constructor
      · refine ⟨(rho 1892 + (rho 1252) - (0)), rho 1893, ?_, ?_, ?_⟩
        · linear_combination r2065
        · linear_combination r2066
        · linear_combination r2067
      · refine ⟨(rho 1895 + (rho 1253) - ((1 : F))), rho 1896, ?_, ?_, ?_⟩
        · linear_combination r2068
        · linear_combination r2069
        · linear_combination r2070
    simpa [base, twice, triple, digit28] using hraw
  have hhigh : rho 1190 =
      Bool.toZMod bits[70]! := by
    simpa only using rho_bit_of_map rho bits hbits 70 (by decide +kernel)
  have hlow : rho 1189 =
      Bool.toZMod bits[69]! := by
    simpa only using rho_bit_of_map rho bits hbits 69 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[70]! bits[69]! (base rho) (twice rho) (triple rho)
    (digit28 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit28 rho) := by
    rw [hdigit]
    cases bits[70]! <;> cases bits[69]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted28 rho) (digit28 rho) (acc29 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1890) (rho 1891) (rho 1893 + rho 1894) ((1 : F) + rho 1896 + rho 1897)
      (rho 1898) (rho 1899) (rho 1900) (rho 1901) (rho 1902) (rho 1903)
      (by simpa [shifted28] using hshift2On)
      (by simpa [digit28] using hdigitOn)
      (by linear_combination r2071)
      (by linear_combination r2072)
      (by linear_combination r2073)
      (by linear_combination r2074)
      (by linear_combination r2075)
      (by linear_combination r2076)
    simpa [shifted28, digit28, acc29] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc29 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted28 rho) (digit28 rho) (acc29 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted28 rho) (digit28 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1190) (rho 1189)
      (base rho) (twice rho) (triple rho) (acc28 rho)
      (acc29 rho) :=
    ⟨shiftOnce28 rho, shifted28 rho, digit28 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window29 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc29 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[68]! (scalarBits rho)[67]!
        (base rho) (twice rho) (triple rho) (acc29 rho)
        (acc30 rho) ∧
      EdwardsBridge.onCurve (acc30 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2077, r2078, r2079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097, r2098, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2077 at r2077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2078 at r2078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2079 at r2079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2080 at r2080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2081 at r2081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2082 at r2082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2083 at r2083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2084 at r2084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2085 at r2085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2086 at r2086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2087 at r2087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2088 at r2088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2089 at r2089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2090 at r2090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2091 at r2091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2092 at r2092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2093 at r2093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2094 at r2094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2095 at r2095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2096 at r2096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2097 at r2097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2098 at r2098
  have hshift1 : EdwardsBridge.doubleSpec (acc29 rho) (shiftOnce29 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1902) (rho 1903) (rho 1904) (rho 1905) (rho 1906) (rho 1907) (rho 1908)
      (by simpa [acc29] using hacc)
      (by linear_combination r2077)
      (by linear_combination r2078)
      (by linear_combination r2079)
      (by linear_combination r2080)
      (by linear_combination r2081)
    simpa [acc29, shiftOnce29] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce29 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc29 rho) (shiftOnce29 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc29 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce29 rho) (shifted29 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1907) (rho 1908) (rho 1909) (rho 1910) (rho 1911) (rho 1912) (rho 1913)
      (by simpa [shiftOnce29] using hshift1On)
      (by linear_combination r2082)
      (by linear_combination r2083)
      (by linear_combination r2084)
      (by linear_combination r2085)
      (by linear_combination r2086)
    simpa [shiftOnce29, shifted29] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted29 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce29 rho) (shifted29 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce29 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1188) (rho 1187)
      (base rho) (twice rho) (triple rho) (digit29 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1188) (rho 1187)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1915 + rho 1916, (1 : F) + rho 1918 + rho 1919⟩ := by
      constructor
      · refine ⟨(rho 1914 + (rho 1252) - (0)), rho 1915, ?_, ?_, ?_⟩
        · linear_combination r2087
        · linear_combination r2088
        · linear_combination r2089
      · refine ⟨(rho 1917 + (rho 1253) - ((1 : F))), rho 1918, ?_, ?_, ?_⟩
        · linear_combination r2090
        · linear_combination r2091
        · linear_combination r2092
    simpa [base, twice, triple, digit29] using hraw
  have hhigh : rho 1188 =
      Bool.toZMod bits[68]! := by
    simpa only using rho_bit_of_map rho bits hbits 68 (by decide +kernel)
  have hlow : rho 1187 =
      Bool.toZMod bits[67]! := by
    simpa only using rho_bit_of_map rho bits hbits 67 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[68]! bits[67]! (base rho) (twice rho) (triple rho)
    (digit29 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit29 rho) := by
    rw [hdigit]
    cases bits[68]! <;> cases bits[67]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted29 rho) (digit29 rho) (acc30 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1912) (rho 1913) (rho 1915 + rho 1916) ((1 : F) + rho 1918 + rho 1919)
      (rho 1920) (rho 1921) (rho 1922) (rho 1923) (rho 1924) (rho 1925)
      (by simpa [shifted29] using hshift2On)
      (by simpa [digit29] using hdigitOn)
      (by linear_combination r2093)
      (by linear_combination r2094)
      (by linear_combination r2095)
      (by linear_combination r2096)
      (by linear_combination r2097)
      (by linear_combination r2098)
    simpa [shifted29, digit29, acc30] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc30 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted29 rho) (digit29 rho) (acc30 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted29 rho) (digit29 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1188) (rho 1187)
      (base rho) (twice rho) (triple rho) (acc29 rho)
      (acc30 rho) :=
    ⟨shiftOnce29 rho, shifted29 rho, digit29 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
