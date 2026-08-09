import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window102 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, r4999, r5000, r5001, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4980 at r4980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4981 at r4981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4982 at r4982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4983 at r4983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4984 at r4984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4985 at r4985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4986 at r4986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4987 at r4987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4988 at r4988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4989 at r4989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4990 at r4990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4991 at r4991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4992 at r4992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4993 at r4993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4994 at r4994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4995 at r4995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4996 at r4996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4997 at r4997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4998 at r4998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4999 at r4999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5000 at r5000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5001 at r5001
  have hshift1 : EdwardsBridge.doubleSpec (acc102 rho) (shiftOnce102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4472) (rho 4473) (rho 4474) (rho 4475) (rho 4476) (rho 4477) (rho 4478)
      (by simpa [acc102] using hacc)
      (by linear_combination r4980)
      (by linear_combination r4981)
      (by linear_combination r4982)
      (by linear_combination r4983)
      (by linear_combination r4984)
    simpa [acc102, shiftOnce102] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc102 rho) (shiftOnce102 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc102 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce102 rho) (shifted102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4477) (rho 4478) (rho 4479) (rho 4480) (rho 4481) (rho 4482) (rho 4483)
      (by simpa [shiftOnce102] using hshift1On)
      (by linear_combination r4985)
      (by linear_combination r4986)
      (by linear_combination r4987)
      (by linear_combination r4988)
      (by linear_combination r4989)
    simpa [shiftOnce102, shifted102] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce102 rho) (shifted102 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce102 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1027) (rho 1026)
      (base rho) (twice rho) (triple rho) (digit102 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1027) (rho 1026)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4485 + rho 4486, (1 : F) + rho 4488 + rho 4489⟩ := by
      constructor
      · refine ⟨(rho 4484 + (rho 2216) - (0)), rho 4485, ?_, ?_, ?_⟩
        · linear_combination r4990
        · linear_combination r4991
        · linear_combination r4992
      · refine ⟨(rho 4487 + (rho 2217) - ((1 : F))), rho 4488, ?_, ?_, ?_⟩
        · linear_combination r4993
        · linear_combination r4994
        · linear_combination r4995
    simpa [base, twice, triple, digit102] using hraw
  have hhigh : rho 1027 =
      Bool.toZMod bits[44]! := by
    simpa only using rho_bit_of_map rho bits hbits 44 (by decide +kernel)
  have hlow : rho 1026 =
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
      (rho 4482) (rho 4483) (rho 4485 + rho 4486) ((1 : F) + rho 4488 + rho 4489)
      (rho 4490) (rho 4491) (rho 4492) (rho 4493) (rho 4494) (rho 4495)
      (by simpa [shifted102] using hshift2On)
      (by simpa [digit102] using hdigitOn)
      (by linear_combination r4996)
      (by linear_combination r4997)
      (by linear_combination r4998)
      (by linear_combination r4999)
      (by linear_combination r5000)
      (by linear_combination r5001)
    simpa [shifted102, digit102, acc103] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc103 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted102 rho) (digit102 rho) (acc103 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted102 rho) (digit102 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1027) (rho 1026)
      (base rho) (twice rho) (triple rho) (acc102 rho)
      (acc103 rho) :=
    ⟨shiftOnce102 rho, shifted102 rho, digit102 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window103 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5002 at r5002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5003 at r5003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5004 at r5004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5005 at r5005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5006 at r5006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5007 at r5007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5008 at r5008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5009 at r5009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5010 at r5010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5011 at r5011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5012 at r5012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5013 at r5013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5014 at r5014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5015 at r5015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5016 at r5016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5017 at r5017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5018 at r5018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5019 at r5019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5020 at r5020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5021 at r5021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5022 at r5022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5023 at r5023
  have hshift1 : EdwardsBridge.doubleSpec (acc103 rho) (shiftOnce103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4494) (rho 4495) (rho 4496) (rho 4497) (rho 4498) (rho 4499) (rho 4500)
      (by simpa [acc103] using hacc)
      (by linear_combination r5002)
      (by linear_combination r5003)
      (by linear_combination r5004)
      (by linear_combination r5005)
      (by linear_combination r5006)
    simpa [acc103, shiftOnce103] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc103 rho) (shiftOnce103 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc103 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce103 rho) (shifted103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4499) (rho 4500) (rho 4501) (rho 4502) (rho 4503) (rho 4504) (rho 4505)
      (by simpa [shiftOnce103] using hshift1On)
      (by linear_combination r5007)
      (by linear_combination r5008)
      (by linear_combination r5009)
      (by linear_combination r5010)
      (by linear_combination r5011)
    simpa [shiftOnce103, shifted103] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce103 rho) (shifted103 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce103 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1025) (rho 1024)
      (base rho) (twice rho) (triple rho) (digit103 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1025) (rho 1024)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4507 + rho 4508, (1 : F) + rho 4510 + rho 4511⟩ := by
      constructor
      · refine ⟨(rho 4506 + (rho 2216) - (0)), rho 4507, ?_, ?_, ?_⟩
        · linear_combination r5012
        · linear_combination r5013
        · linear_combination r5014
      · refine ⟨(rho 4509 + (rho 2217) - ((1 : F))), rho 4510, ?_, ?_, ?_⟩
        · linear_combination r5015
        · linear_combination r5016
        · linear_combination r5017
    simpa [base, twice, triple, digit103] using hraw
  have hhigh : rho 1025 =
      Bool.toZMod bits[42]! := by
    simpa only using rho_bit_of_map rho bits hbits 42 (by decide +kernel)
  have hlow : rho 1024 =
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
      (rho 4504) (rho 4505) (rho 4507 + rho 4508) ((1 : F) + rho 4510 + rho 4511)
      (rho 4512) (rho 4513) (rho 4514) (rho 4515) (rho 4516) (rho 4517)
      (by simpa [shifted103] using hshift2On)
      (by simpa [digit103] using hdigitOn)
      (by linear_combination r5018)
      (by linear_combination r5019)
      (by linear_combination r5020)
      (by linear_combination r5021)
      (by linear_combination r5022)
      (by linear_combination r5023)
    simpa [shifted103, digit103, acc104] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc104 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted103 rho) (digit103 rho) (acc104 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted103 rho) (digit103 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1025) (rho 1024)
      (base rho) (twice rho) (triple rho) (acc103 rho)
      (acc104 rho) :=
    ⟨shiftOnce103 rho, shifted103 rho, digit103 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window104 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5024, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart63 at p63
  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5024 at r5024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5025 at r5025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5026 at r5026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5027 at r5027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5028 at r5028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5029 at r5029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5030 at r5030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5031 at r5031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5032 at r5032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5033 at r5033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5034 at r5034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5035 at r5035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5036 at r5036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5037 at r5037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5038 at r5038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5039 at r5039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5040 at r5040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5041 at r5041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5042 at r5042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5043 at r5043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5044 at r5044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5045 at r5045
  have hshift1 : EdwardsBridge.doubleSpec (acc104 rho) (shiftOnce104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4516) (rho 4517) (rho 4518) (rho 4519) (rho 4520) (rho 4521) (rho 4522)
      (by simpa [acc104] using hacc)
      (by linear_combination r5024)
      (by linear_combination r5025)
      (by linear_combination r5026)
      (by linear_combination r5027)
      (by linear_combination r5028)
    simpa [acc104, shiftOnce104] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc104 rho) (shiftOnce104 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc104 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce104 rho) (shifted104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4521) (rho 4522) (rho 4523) (rho 4524) (rho 4525) (rho 4526) (rho 4527)
      (by simpa [shiftOnce104] using hshift1On)
      (by linear_combination r5029)
      (by linear_combination r5030)
      (by linear_combination r5031)
      (by linear_combination r5032)
      (by linear_combination r5033)
    simpa [shiftOnce104, shifted104] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce104 rho) (shifted104 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce104 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1023) (rho 1022)
      (base rho) (twice rho) (triple rho) (digit104 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1023) (rho 1022)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4529 + rho 4530, (1 : F) + rho 4532 + rho 4533⟩ := by
      constructor
      · refine ⟨(rho 4528 + (rho 2216) - (0)), rho 4529, ?_, ?_, ?_⟩
        · linear_combination r5034
        · linear_combination r5035
        · linear_combination r5036
      · refine ⟨(rho 4531 + (rho 2217) - ((1 : F))), rho 4532, ?_, ?_, ?_⟩
        · linear_combination r5037
        · linear_combination r5038
        · linear_combination r5039
    simpa [base, twice, triple, digit104] using hraw
  have hhigh : rho 1023 =
      Bool.toZMod bits[40]! := by
    simpa only using rho_bit_of_map rho bits hbits 40 (by decide +kernel)
  have hlow : rho 1022 =
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
      (rho 4526) (rho 4527) (rho 4529 + rho 4530) ((1 : F) + rho 4532 + rho 4533)
      (rho 4534) (rho 4535) (rho 4536) (rho 4537) (rho 4538) (rho 4539)
      (by simpa [shifted104] using hshift2On)
      (by simpa [digit104] using hdigitOn)
      (by linear_combination r5040)
      (by linear_combination r5041)
      (by linear_combination r5042)
      (by linear_combination r5043)
      (by linear_combination r5044)
      (by linear_combination r5045)
    simpa [shifted104, digit104, acc105] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc105 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted104 rho) (digit104 rho) (acc105 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted104 rho) (digit104 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1023) (rho 1022)
      (base rho) (twice rho) (triple rho) (acc104 rho)
      (acc105 rho) :=
    ⟨shiftOnce104 rho, shifted104 rho, digit104 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window105 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5046 at r5046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5047 at r5047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5048 at r5048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5049 at r5049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5050 at r5050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5051 at r5051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5052 at r5052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5053 at r5053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5054 at r5054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5055 at r5055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5056 at r5056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5057 at r5057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5058 at r5058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5059 at r5059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5060 at r5060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5061 at r5061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5062 at r5062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5063 at r5063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5064 at r5064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5065 at r5065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5066 at r5066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5067 at r5067
  have hshift1 : EdwardsBridge.doubleSpec (acc105 rho) (shiftOnce105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4538) (rho 4539) (rho 4540) (rho 4541) (rho 4542) (rho 4543) (rho 4544)
      (by simpa [acc105] using hacc)
      (by linear_combination r5046)
      (by linear_combination r5047)
      (by linear_combination r5048)
      (by linear_combination r5049)
      (by linear_combination r5050)
    simpa [acc105, shiftOnce105] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc105 rho) (shiftOnce105 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc105 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce105 rho) (shifted105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4543) (rho 4544) (rho 4545) (rho 4546) (rho 4547) (rho 4548) (rho 4549)
      (by simpa [shiftOnce105] using hshift1On)
      (by linear_combination r5051)
      (by linear_combination r5052)
      (by linear_combination r5053)
      (by linear_combination r5054)
      (by linear_combination r5055)
    simpa [shiftOnce105, shifted105] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce105 rho) (shifted105 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce105 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1021) (rho 1020)
      (base rho) (twice rho) (triple rho) (digit105 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1021) (rho 1020)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4551 + rho 4552, (1 : F) + rho 4554 + rho 4555⟩ := by
      constructor
      · refine ⟨(rho 4550 + (rho 2216) - (0)), rho 4551, ?_, ?_, ?_⟩
        · linear_combination r5056
        · linear_combination r5057
        · linear_combination r5058
      · refine ⟨(rho 4553 + (rho 2217) - ((1 : F))), rho 4554, ?_, ?_, ?_⟩
        · linear_combination r5059
        · linear_combination r5060
        · linear_combination r5061
    simpa [base, twice, triple, digit105] using hraw
  have hhigh : rho 1021 =
      Bool.toZMod bits[38]! := by
    simpa only using rho_bit_of_map rho bits hbits 38 (by decide +kernel)
  have hlow : rho 1020 =
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
      (rho 4548) (rho 4549) (rho 4551 + rho 4552) ((1 : F) + rho 4554 + rho 4555)
      (rho 4556) (rho 4557) (rho 4558) (rho 4559) (rho 4560) (rho 4561)
      (by simpa [shifted105] using hshift2On)
      (by simpa [digit105] using hdigitOn)
      (by linear_combination r5062)
      (by linear_combination r5063)
      (by linear_combination r5064)
      (by linear_combination r5065)
      (by linear_combination r5066)
      (by linear_combination r5067)
    simpa [shifted105, digit105, acc106] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc106 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted105 rho) (digit105 rho) (acc106 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted105 rho) (digit105 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1021) (rho 1020)
      (base rho) (twice rho) (triple rho) (acc105 rho)
      (acc106 rho) :=
    ⟨shiftOnce105 rho, shifted105 rho, digit105 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window106 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5068 at r5068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5069 at r5069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5070 at r5070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5071 at r5071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5072 at r5072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5073 at r5073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5074 at r5074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5075 at r5075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5076 at r5076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5077 at r5077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5078 at r5078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5079 at r5079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5080 at r5080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5081 at r5081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5082 at r5082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5083 at r5083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5084 at r5084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5085 at r5085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5086 at r5086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5087 at r5087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5088 at r5088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5089 at r5089
  have hshift1 : EdwardsBridge.doubleSpec (acc106 rho) (shiftOnce106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4560) (rho 4561) (rho 4562) (rho 4563) (rho 4564) (rho 4565) (rho 4566)
      (by simpa [acc106] using hacc)
      (by linear_combination r5068)
      (by linear_combination r5069)
      (by linear_combination r5070)
      (by linear_combination r5071)
      (by linear_combination r5072)
    simpa [acc106, shiftOnce106] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc106 rho) (shiftOnce106 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc106 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce106 rho) (shifted106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4565) (rho 4566) (rho 4567) (rho 4568) (rho 4569) (rho 4570) (rho 4571)
      (by simpa [shiftOnce106] using hshift1On)
      (by linear_combination r5073)
      (by linear_combination r5074)
      (by linear_combination r5075)
      (by linear_combination r5076)
      (by linear_combination r5077)
    simpa [shiftOnce106, shifted106] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce106 rho) (shifted106 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce106 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1019) (rho 1018)
      (base rho) (twice rho) (triple rho) (digit106 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1019) (rho 1018)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4573 + rho 4574, (1 : F) + rho 4576 + rho 4577⟩ := by
      constructor
      · refine ⟨(rho 4572 + (rho 2216) - (0)), rho 4573, ?_, ?_, ?_⟩
        · linear_combination r5078
        · linear_combination r5079
        · linear_combination r5080
      · refine ⟨(rho 4575 + (rho 2217) - ((1 : F))), rho 4576, ?_, ?_, ?_⟩
        · linear_combination r5081
        · linear_combination r5082
        · linear_combination r5083
    simpa [base, twice, triple, digit106] using hraw
  have hhigh : rho 1019 =
      Bool.toZMod bits[36]! := by
    simpa only using rho_bit_of_map rho bits hbits 36 (by decide +kernel)
  have hlow : rho 1018 =
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
      (rho 4570) (rho 4571) (rho 4573 + rho 4574) ((1 : F) + rho 4576 + rho 4577)
      (rho 4578) (rho 4579) (rho 4580) (rho 4581) (rho 4582) (rho 4583)
      (by simpa [shifted106] using hshift2On)
      (by simpa [digit106] using hdigitOn)
      (by linear_combination r5084)
      (by linear_combination r5085)
      (by linear_combination r5086)
      (by linear_combination r5087)
      (by linear_combination r5088)
      (by linear_combination r5089)
    simpa [shifted106, digit106, acc107] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc107 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted106 rho) (digit106 rho) (acc107 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted106 rho) (digit106 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1019) (rho 1018)
      (base rho) (twice rho) (triple rho) (acc106 rho)
      (acc107 rho) :=
    ⟨shiftOnce106 rho, shifted106 rho, digit106 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window107 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5090 at r5090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5091 at r5091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5092 at r5092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5093 at r5093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5094 at r5094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5095 at r5095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5096 at r5096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5097 at r5097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5098 at r5098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5099 at r5099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5100 at r5100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5101 at r5101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5102 at r5102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5103 at r5103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5104 at r5104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5105 at r5105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5106 at r5106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5107 at r5107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5108 at r5108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5109 at r5109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5110 at r5110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5111 at r5111
  have hshift1 : EdwardsBridge.doubleSpec (acc107 rho) (shiftOnce107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4582) (rho 4583) (rho 4584) (rho 4585) (rho 4586) (rho 4587) (rho 4588)
      (by simpa [acc107] using hacc)
      (by linear_combination r5090)
      (by linear_combination r5091)
      (by linear_combination r5092)
      (by linear_combination r5093)
      (by linear_combination r5094)
    simpa [acc107, shiftOnce107] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc107 rho) (shiftOnce107 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc107 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce107 rho) (shifted107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4587) (rho 4588) (rho 4589) (rho 4590) (rho 4591) (rho 4592) (rho 4593)
      (by simpa [shiftOnce107] using hshift1On)
      (by linear_combination r5095)
      (by linear_combination r5096)
      (by linear_combination r5097)
      (by linear_combination r5098)
      (by linear_combination r5099)
    simpa [shiftOnce107, shifted107] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce107 rho) (shifted107 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce107 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1017) (rho 1016)
      (base rho) (twice rho) (triple rho) (digit107 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1017) (rho 1016)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4595 + rho 4596, (1 : F) + rho 4598 + rho 4599⟩ := by
      constructor
      · refine ⟨(rho 4594 + (rho 2216) - (0)), rho 4595, ?_, ?_, ?_⟩
        · linear_combination r5100
        · linear_combination r5101
        · linear_combination r5102
      · refine ⟨(rho 4597 + (rho 2217) - ((1 : F))), rho 4598, ?_, ?_, ?_⟩
        · linear_combination r5103
        · linear_combination r5104
        · linear_combination r5105
    simpa [base, twice, triple, digit107] using hraw
  have hhigh : rho 1017 =
      Bool.toZMod bits[34]! := by
    simpa only using rho_bit_of_map rho bits hbits 34 (by decide +kernel)
  have hlow : rho 1016 =
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
      (rho 4592) (rho 4593) (rho 4595 + rho 4596) ((1 : F) + rho 4598 + rho 4599)
      (rho 4600) (rho 4601) (rho 4602) (rho 4603) (rho 4604) (rho 4605)
      (by simpa [shifted107] using hshift2On)
      (by simpa [digit107] using hdigitOn)
      (by linear_combination r5106)
      (by linear_combination r5107)
      (by linear_combination r5108)
      (by linear_combination r5109)
      (by linear_combination r5110)
      (by linear_combination r5111)
    simpa [shifted107, digit107, acc108] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc108 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted107 rho) (digit107 rho) (acc108 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted107 rho) (digit107 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1017) (rho 1016)
      (base rho) (twice rho) (triple rho) (acc107 rho)
      (acc108 rho) :=
    ⟨shiftOnce107 rho, shifted107 rho, digit107 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
