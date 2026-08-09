import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window78 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc78 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[92]! (scalarBits rho)[91]!
        (base rho) (twice rho) (triple rho) (acc78 rho)
        (acc79 rho) ∧
      EdwardsBridge.onCurve (acc79 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, p25, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart25 at p25
  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1985 at r1985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1986 at r1986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1987 at r1987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1988 at r1988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1989 at r1989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1990 at r1990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1991 at r1991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1992 at r1992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1993 at r1993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1994 at r1994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1995 at r1995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1996 at r1996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1997 at r1997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1998 at r1998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1999 at r1999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2000 at r2000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2001 at r2001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2002 at r2002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2003 at r2003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2004 at r2004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2005 at r2005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2006 at r2006
  have hshift1 : EdwardsBridge.doubleSpec (acc78 rho) (shiftOnce78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1986) (rho 1987) (rho 1988) (rho 1989) (rho 1990) (rho 1991) (rho 1992)
      (by simpa [acc78] using hacc)
      (by linear_combination r1985)
      (by linear_combination r1986)
      (by linear_combination r1987)
      (by linear_combination r1988)
      (by linear_combination r1989)
    simpa [acc78, shiftOnce78] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc78 rho) (shiftOnce78 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc78 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce78 rho) (shifted78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1991) (rho 1992) (rho 1993) (rho 1994) (rho 1995) (rho 1996) (rho 1997)
      (by simpa [shiftOnce78] using hshift1On)
      (by linear_combination r1990)
      (by linear_combination r1991)
      (by linear_combination r1992)
      (by linear_combination r1993)
      (by linear_combination r1994)
    simpa [shiftOnce78, shifted78] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce78 rho) (shifted78 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce78 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 93) (rho 92)
      (base rho) (twice rho) (triple rho) (digit78 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 93) (rho 92)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1999 + rho 2000, (1 : F) + rho 2002 + rho 2003⟩ := by
      constructor
      · refine ⟨(rho 1998 + (rho 258) - (0)), rho 1999, ?_, ?_, ?_⟩
        · linear_combination r1995 - (rho 92) * order_cast_zero
        · linear_combination r1996
        · linear_combination r1997
      · refine ⟨(rho 2001 + (rho 259) - ((1 : F))), rho 2002, ?_, ?_, ?_⟩
        · linear_combination r1998 - (rho 92) * order_cast_zero
        · linear_combination r1999
        · linear_combination r2000
    simpa [base, twice, triple, digit78] using hraw
  have hhigh : rho 93 =
      Bool.toZMod bits[92]! := by
    simpa only using rho_bit_of_map rho bits hbits 92 (by decide +kernel)
  have hlow : rho 92 =
      Bool.toZMod bits[91]! := by
    simpa only using rho_bit_of_map rho bits hbits 91 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[92]! bits[91]! (base rho) (twice rho) (triple rho)
    (digit78 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit78 rho) := by
    rw [hdigit]
    cases bits[92]! <;> cases bits[91]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted78 rho) (digit78 rho) (acc79 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1996) (rho 1997) (rho 1999 + rho 2000) ((1 : F) + rho 2002 + rho 2003)
      (rho 2004) (rho 2005) (rho 2006) (rho 2007) (rho 2008) (rho 2009)
      (by simpa [shifted78] using hshift2On)
      (by simpa [digit78] using hdigitOn)
      (by linear_combination r2001)
      (by linear_combination r2002)
      (by linear_combination r2003)
      (by linear_combination r2004)
      (by linear_combination r2005)
      (by linear_combination r2006)
    simpa [shifted78, digit78, acc79] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc79 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted78 rho) (digit78 rho) (acc79 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted78 rho) (digit78 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 93) (rho 92)
      (base rho) (twice rho) (triple rho) (acc78 rho)
      (acc79 rho) :=
    ⟨shiftOnce78 rho, shifted78 rho, digit78 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window79 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc79 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[90]! (scalarBits rho)[89]!
        (base rho) (twice rho) (triple rho) (acc79 rho)
        (acc80 rho) ∧
      EdwardsBridge.onCurve (acc80 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2007 at r2007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2008 at r2008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2009 at r2009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2010 at r2010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2011 at r2011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2012 at r2012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2013 at r2013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2014 at r2014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2015 at r2015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2016 at r2016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2017 at r2017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2018 at r2018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2019 at r2019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2020 at r2020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2021 at r2021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2022 at r2022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2023 at r2023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2024 at r2024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2025 at r2025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2026 at r2026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2027 at r2027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2028 at r2028
  have hshift1 : EdwardsBridge.doubleSpec (acc79 rho) (shiftOnce79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2008) (rho 2009) (rho 2010) (rho 2011) (rho 2012) (rho 2013) (rho 2014)
      (by simpa [acc79] using hacc)
      (by linear_combination r2007)
      (by linear_combination r2008)
      (by linear_combination r2009)
      (by linear_combination r2010)
      (by linear_combination r2011)
    simpa [acc79, shiftOnce79] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc79 rho) (shiftOnce79 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc79 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce79 rho) (shifted79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2013) (rho 2014) (rho 2015) (rho 2016) (rho 2017) (rho 2018) (rho 2019)
      (by simpa [shiftOnce79] using hshift1On)
      (by linear_combination r2012)
      (by linear_combination r2013)
      (by linear_combination r2014)
      (by linear_combination r2015)
      (by linear_combination r2016)
    simpa [shiftOnce79, shifted79] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce79 rho) (shifted79 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce79 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 91) (rho 90)
      (base rho) (twice rho) (triple rho) (digit79 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 91) (rho 90)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2021 + rho 2022, (1 : F) + rho 2024 + rho 2025⟩ := by
      constructor
      · refine ⟨(rho 2020 + (rho 258) - (0)), rho 2021, ?_, ?_, ?_⟩
        · linear_combination r2017 - (rho 90) * order_cast_zero
        · linear_combination r2018
        · linear_combination r2019
      · refine ⟨(rho 2023 + (rho 259) - ((1 : F))), rho 2024, ?_, ?_, ?_⟩
        · linear_combination r2020 - (rho 90) * order_cast_zero
        · linear_combination r2021
        · linear_combination r2022
    simpa [base, twice, triple, digit79] using hraw
  have hhigh : rho 91 =
      Bool.toZMod bits[90]! := by
    simpa only using rho_bit_of_map rho bits hbits 90 (by decide +kernel)
  have hlow : rho 90 =
      Bool.toZMod bits[89]! := by
    simpa only using rho_bit_of_map rho bits hbits 89 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[90]! bits[89]! (base rho) (twice rho) (triple rho)
    (digit79 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit79 rho) := by
    rw [hdigit]
    cases bits[90]! <;> cases bits[89]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted79 rho) (digit79 rho) (acc80 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2018) (rho 2019) (rho 2021 + rho 2022) ((1 : F) + rho 2024 + rho 2025)
      (rho 2026) (rho 2027) (rho 2028) (rho 2029) (rho 2030) (rho 2031)
      (by simpa [shifted79] using hshift2On)
      (by simpa [digit79] using hdigitOn)
      (by linear_combination r2023)
      (by linear_combination r2024)
      (by linear_combination r2025)
      (by linear_combination r2026)
      (by linear_combination r2027)
      (by linear_combination r2028)
    simpa [shifted79, digit79, acc80] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc80 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted79 rho) (digit79 rho) (acc80 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted79 rho) (digit79 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 91) (rho 90)
      (base rho) (twice rho) (triple rho) (acc79 rho)
      (acc80 rho) :=
    ⟨shiftOnce79 rho, shifted79 rho, digit79 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window80 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc80 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[88]! (scalarBits rho)[87]!
        (base rho) (twice rho) (triple rho) (acc80 rho)
        (acc81 rho) ∧
      EdwardsBridge.onCurve (acc81 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2029, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2029 at r2029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2030 at r2030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2031 at r2031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2032 at r2032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2033 at r2033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2034 at r2034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2035 at r2035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2036 at r2036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2037 at r2037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2038 at r2038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2039 at r2039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2040 at r2040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2041 at r2041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2042 at r2042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2043 at r2043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2044 at r2044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2045 at r2045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2046 at r2046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2047 at r2047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2048 at r2048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2049 at r2049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2050 at r2050
  have hshift1 : EdwardsBridge.doubleSpec (acc80 rho) (shiftOnce80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2030) (rho 2031) (rho 2032) (rho 2033) (rho 2034) (rho 2035) (rho 2036)
      (by simpa [acc80] using hacc)
      (by linear_combination r2029)
      (by linear_combination r2030)
      (by linear_combination r2031)
      (by linear_combination r2032)
      (by linear_combination r2033)
    simpa [acc80, shiftOnce80] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc80 rho) (shiftOnce80 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc80 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce80 rho) (shifted80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2035) (rho 2036) (rho 2037) (rho 2038) (rho 2039) (rho 2040) (rho 2041)
      (by simpa [shiftOnce80] using hshift1On)
      (by linear_combination r2034)
      (by linear_combination r2035)
      (by linear_combination r2036)
      (by linear_combination r2037)
      (by linear_combination r2038)
    simpa [shiftOnce80, shifted80] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce80 rho) (shifted80 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce80 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 89) (rho 88)
      (base rho) (twice rho) (triple rho) (digit80 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 89) (rho 88)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2043 + rho 2044, (1 : F) + rho 2046 + rho 2047⟩ := by
      constructor
      · refine ⟨(rho 2042 + (rho 258) - (0)), rho 2043, ?_, ?_, ?_⟩
        · linear_combination r2039 - (rho 88) * order_cast_zero
        · linear_combination r2040
        · linear_combination r2041
      · refine ⟨(rho 2045 + (rho 259) - ((1 : F))), rho 2046, ?_, ?_, ?_⟩
        · linear_combination r2042 - (rho 88) * order_cast_zero
        · linear_combination r2043
        · linear_combination r2044
    simpa [base, twice, triple, digit80] using hraw
  have hhigh : rho 89 =
      Bool.toZMod bits[88]! := by
    simpa only using rho_bit_of_map rho bits hbits 88 (by decide +kernel)
  have hlow : rho 88 =
      Bool.toZMod bits[87]! := by
    simpa only using rho_bit_of_map rho bits hbits 87 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[88]! bits[87]! (base rho) (twice rho) (triple rho)
    (digit80 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit80 rho) := by
    rw [hdigit]
    cases bits[88]! <;> cases bits[87]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted80 rho) (digit80 rho) (acc81 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2040) (rho 2041) (rho 2043 + rho 2044) ((1 : F) + rho 2046 + rho 2047)
      (rho 2048) (rho 2049) (rho 2050) (rho 2051) (rho 2052) (rho 2053)
      (by simpa [shifted80] using hshift2On)
      (by simpa [digit80] using hdigitOn)
      (by linear_combination r2045)
      (by linear_combination r2046)
      (by linear_combination r2047)
      (by linear_combination r2048)
      (by linear_combination r2049)
      (by linear_combination r2050)
    simpa [shifted80, digit80, acc81] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc81 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted80 rho) (digit80 rho) (acc81 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted80 rho) (digit80 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 89) (rho 88)
      (base rho) (twice rho) (triple rho) (acc80 rho)
      (acc81 rho) :=
    ⟨shiftOnce80 rho, shifted80 rho, digit80 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window81 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc81 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[86]! (scalarBits rho)[85]!
        (base rho) (twice rho) (triple rho) (acc81 rho)
        (acc82 rho) ∧
      EdwardsBridge.onCurve (acc82 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071, r2072, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2051 at r2051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2052 at r2052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2053 at r2053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2054 at r2054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2055 at r2055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2056 at r2056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2057 at r2057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2058 at r2058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2059 at r2059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2060 at r2060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2061 at r2061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2062 at r2062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2063 at r2063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2064 at r2064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2065 at r2065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2066 at r2066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2067 at r2067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2068 at r2068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2069 at r2069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2070 at r2070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2071 at r2071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2072 at r2072
  have hshift1 : EdwardsBridge.doubleSpec (acc81 rho) (shiftOnce81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2052) (rho 2053) (rho 2054) (rho 2055) (rho 2056) (rho 2057) (rho 2058)
      (by simpa [acc81] using hacc)
      (by linear_combination r2051)
      (by linear_combination r2052)
      (by linear_combination r2053)
      (by linear_combination r2054)
      (by linear_combination r2055)
    simpa [acc81, shiftOnce81] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc81 rho) (shiftOnce81 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc81 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce81 rho) (shifted81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2057) (rho 2058) (rho 2059) (rho 2060) (rho 2061) (rho 2062) (rho 2063)
      (by simpa [shiftOnce81] using hshift1On)
      (by linear_combination r2056)
      (by linear_combination r2057)
      (by linear_combination r2058)
      (by linear_combination r2059)
      (by linear_combination r2060)
    simpa [shiftOnce81, shifted81] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce81 rho) (shifted81 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce81 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 87) (rho 86)
      (base rho) (twice rho) (triple rho) (digit81 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 87) (rho 86)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2065 + rho 2066, (1 : F) + rho 2068 + rho 2069⟩ := by
      constructor
      · refine ⟨(rho 2064 + (rho 258) - (0)), rho 2065, ?_, ?_, ?_⟩
        · linear_combination r2061 - (rho 86) * order_cast_zero
        · linear_combination r2062
        · linear_combination r2063
      · refine ⟨(rho 2067 + (rho 259) - ((1 : F))), rho 2068, ?_, ?_, ?_⟩
        · linear_combination r2064 - (rho 86) * order_cast_zero
        · linear_combination r2065
        · linear_combination r2066
    simpa [base, twice, triple, digit81] using hraw
  have hhigh : rho 87 =
      Bool.toZMod bits[86]! := by
    simpa only using rho_bit_of_map rho bits hbits 86 (by decide +kernel)
  have hlow : rho 86 =
      Bool.toZMod bits[85]! := by
    simpa only using rho_bit_of_map rho bits hbits 85 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[86]! bits[85]! (base rho) (twice rho) (triple rho)
    (digit81 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit81 rho) := by
    rw [hdigit]
    cases bits[86]! <;> cases bits[85]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted81 rho) (digit81 rho) (acc82 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2062) (rho 2063) (rho 2065 + rho 2066) ((1 : F) + rho 2068 + rho 2069)
      (rho 2070) (rho 2071) (rho 2072) (rho 2073) (rho 2074) (rho 2075)
      (by simpa [shifted81] using hshift2On)
      (by simpa [digit81] using hdigitOn)
      (by linear_combination r2067)
      (by linear_combination r2068)
      (by linear_combination r2069)
      (by linear_combination r2070)
      (by linear_combination r2071)
      (by linear_combination r2072)
    simpa [shifted81, digit81, acc82] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc82 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted81 rho) (digit81 rho) (acc82 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted81 rho) (digit81 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 87) (rho 86)
      (base rho) (twice rho) (triple rho) (acc81 rho)
      (acc82 rho) :=
    ⟨shiftOnce81 rho, shifted81 rho, digit81 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window82 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc82 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[84]! (scalarBits rho)[83]!
        (base rho) (twice rho) (triple rho) (acc82 rho)
        (acc83 rho) ∧
      EdwardsBridge.onCurve (acc83 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2073 at r2073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2074 at r2074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2075 at r2075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2076 at r2076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2077 at r2077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2078 at r2078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2079 at r2079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2080 at r2080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2081 at r2081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2082 at r2082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2083 at r2083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2084 at r2084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2085 at r2085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2086 at r2086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2087 at r2087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2088 at r2088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2089 at r2089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2090 at r2090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2091 at r2091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2092 at r2092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2093 at r2093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2094 at r2094
  have hshift1 : EdwardsBridge.doubleSpec (acc82 rho) (shiftOnce82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2074) (rho 2075) (rho 2076) (rho 2077) (rho 2078) (rho 2079) (rho 2080)
      (by simpa [acc82] using hacc)
      (by linear_combination r2073)
      (by linear_combination r2074)
      (by linear_combination r2075)
      (by linear_combination r2076)
      (by linear_combination r2077)
    simpa [acc82, shiftOnce82] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc82 rho) (shiftOnce82 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc82 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce82 rho) (shifted82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2079) (rho 2080) (rho 2081) (rho 2082) (rho 2083) (rho 2084) (rho 2085)
      (by simpa [shiftOnce82] using hshift1On)
      (by linear_combination r2078)
      (by linear_combination r2079)
      (by linear_combination r2080)
      (by linear_combination r2081)
      (by linear_combination r2082)
    simpa [shiftOnce82, shifted82] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce82 rho) (shifted82 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce82 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 85) (rho 84)
      (base rho) (twice rho) (triple rho) (digit82 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 85) (rho 84)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2087 + rho 2088, (1 : F) + rho 2090 + rho 2091⟩ := by
      constructor
      · refine ⟨(rho 2086 + (rho 258) - (0)), rho 2087, ?_, ?_, ?_⟩
        · linear_combination r2083 - (rho 84) * order_cast_zero
        · linear_combination r2084
        · linear_combination r2085
      · refine ⟨(rho 2089 + (rho 259) - ((1 : F))), rho 2090, ?_, ?_, ?_⟩
        · linear_combination r2086 - (rho 84) * order_cast_zero
        · linear_combination r2087
        · linear_combination r2088
    simpa [base, twice, triple, digit82] using hraw
  have hhigh : rho 85 =
      Bool.toZMod bits[84]! := by
    simpa only using rho_bit_of_map rho bits hbits 84 (by decide +kernel)
  have hlow : rho 84 =
      Bool.toZMod bits[83]! := by
    simpa only using rho_bit_of_map rho bits hbits 83 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[84]! bits[83]! (base rho) (twice rho) (triple rho)
    (digit82 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit82 rho) := by
    rw [hdigit]
    cases bits[84]! <;> cases bits[83]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted82 rho) (digit82 rho) (acc83 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2084) (rho 2085) (rho 2087 + rho 2088) ((1 : F) + rho 2090 + rho 2091)
      (rho 2092) (rho 2093) (rho 2094) (rho 2095) (rho 2096) (rho 2097)
      (by simpa [shifted82] using hshift2On)
      (by simpa [digit82] using hdigitOn)
      (by linear_combination r2089)
      (by linear_combination r2090)
      (by linear_combination r2091)
      (by linear_combination r2092)
      (by linear_combination r2093)
      (by linear_combination r2094)
    simpa [shifted82, digit82, acc83] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc83 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted82 rho) (digit82 rho) (acc83 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted82 rho) (digit82 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 85) (rho 84)
      (base rho) (twice rho) (triple rho) (acc82 rho)
      (acc83 rho) :=
    ⟨shiftOnce82 rho, shifted82 rho, digit82 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window83 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc83 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[82]! (scalarBits rho)[81]!
        (base rho) (twice rho) (triple rho) (acc83 rho)
        (acc84 rho) ∧
      EdwardsBridge.onCurve (acc84 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2095 at r2095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2096 at r2096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2097 at r2097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2098 at r2098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2099 at r2099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2100 at r2100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2101 at r2101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2102 at r2102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2103 at r2103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2104 at r2104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2105 at r2105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2106 at r2106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2107 at r2107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2108 at r2108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2109 at r2109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2110 at r2110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2111 at r2111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2112 at r2112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2113 at r2113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2114 at r2114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2115 at r2115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2116 at r2116
  have hshift1 : EdwardsBridge.doubleSpec (acc83 rho) (shiftOnce83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2096) (rho 2097) (rho 2098) (rho 2099) (rho 2100) (rho 2101) (rho 2102)
      (by simpa [acc83] using hacc)
      (by linear_combination r2095)
      (by linear_combination r2096)
      (by linear_combination r2097)
      (by linear_combination r2098)
      (by linear_combination r2099)
    simpa [acc83, shiftOnce83] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc83 rho) (shiftOnce83 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc83 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce83 rho) (shifted83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2101) (rho 2102) (rho 2103) (rho 2104) (rho 2105) (rho 2106) (rho 2107)
      (by simpa [shiftOnce83] using hshift1On)
      (by linear_combination r2100)
      (by linear_combination r2101)
      (by linear_combination r2102)
      (by linear_combination r2103)
      (by linear_combination r2104)
    simpa [shiftOnce83, shifted83] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce83 rho) (shifted83 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce83 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 83) (rho 82)
      (base rho) (twice rho) (triple rho) (digit83 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 83) (rho 82)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2109 + rho 2110, (1 : F) + rho 2112 + rho 2113⟩ := by
      constructor
      · refine ⟨(rho 2108 + (rho 258) - (0)), rho 2109, ?_, ?_, ?_⟩
        · linear_combination r2105 - (rho 82) * order_cast_zero
        · linear_combination r2106
        · linear_combination r2107
      · refine ⟨(rho 2111 + (rho 259) - ((1 : F))), rho 2112, ?_, ?_, ?_⟩
        · linear_combination r2108 - (rho 82) * order_cast_zero
        · linear_combination r2109
        · linear_combination r2110
    simpa [base, twice, triple, digit83] using hraw
  have hhigh : rho 83 =
      Bool.toZMod bits[82]! := by
    simpa only using rho_bit_of_map rho bits hbits 82 (by decide +kernel)
  have hlow : rho 82 =
      Bool.toZMod bits[81]! := by
    simpa only using rho_bit_of_map rho bits hbits 81 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[82]! bits[81]! (base rho) (twice rho) (triple rho)
    (digit83 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit83 rho) := by
    rw [hdigit]
    cases bits[82]! <;> cases bits[81]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted83 rho) (digit83 rho) (acc84 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2106) (rho 2107) (rho 2109 + rho 2110) ((1 : F) + rho 2112 + rho 2113)
      (rho 2114) (rho 2115) (rho 2116) (rho 2117) (rho 2118) (rho 2119)
      (by simpa [shifted83] using hshift2On)
      (by simpa [digit83] using hdigitOn)
      (by linear_combination r2111)
      (by linear_combination r2112)
      (by linear_combination r2113)
      (by linear_combination r2114)
      (by linear_combination r2115)
      (by linear_combination r2116)
    simpa [shifted83, digit83, acc84] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc84 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted83 rho) (digit83 rho) (acc84 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted83 rho) (digit83 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 83) (rho 82)
      (base rho) (twice rho) (triple rho) (acc83 rho)
      (acc84 rho) :=
    ⟨shiftOnce83 rho, shifted83 rho, digit83 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
