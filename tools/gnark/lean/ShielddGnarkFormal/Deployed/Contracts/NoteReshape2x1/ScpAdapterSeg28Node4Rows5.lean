import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node4_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1999 : Seg28.relationRow1999 rho)
    (r2000 : Seg28.relationRow2000 rho)
    (r2001 : Seg28.relationRow2001 rho)
    (r2002 : Seg28.relationRow2002 rho)
    (r2003 : Seg28.relationRow2003 rho)
    (tail : next (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg50 (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) next := by
  exact ⟨rho 21377, rho 21378, rho 21379, rho 21380, rho 21381, r1999, r2000, r2001, r2002, r2003, tail⟩

theorem seg28_scp_node4_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2004 : Seg28.relationRow2004 rho)
    (r2005 : Seg28.relationRow2005 rho)
    (r2006 : Seg28.relationRow2006 rho)
    (r2007 : Seg28.relationRow2007 rho)
    (r2008 : Seg28.relationRow2008 rho)
    (tail : next (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) (rho 21386)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg51 (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) next := by
  exact ⟨rho 21382, rho 21383, rho 21384, rho 21385, rho 21386, r2004, r2005, r2006, r2007, r2008, tail⟩

theorem seg28_scp_node4_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2009 : Seg28.relationRow2009 rho)
    (r2010 : Seg28.relationRow2010 rho)
    (r2011 : Seg28.relationRow2011 rho)
    (r2012 : Seg28.relationRow2012 rho)
    (r2013 : Seg28.relationRow2013 rho)
    (tail : next (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) (rho 21386) (rho 21391)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg52 (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) (rho 21386) next := by
  exact ⟨rho 21387, rho 21388, rho 21389, rho 21390, rho 21391, r2009, r2010, r2011, r2012, r2013, tail⟩

theorem seg28_scp_node4_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2014 : Seg28.relationRow2014 rho)
    (r2015 : Seg28.relationRow2015 rho)
    (r2016 : Seg28.relationRow2016 rho)
    (r2017 : Seg28.relationRow2017 rho)
    (r2018 : Seg28.relationRow2018 rho)
    (tail : next (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) (rho 21386) (rho 21391) (rho 21396)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg53 (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) (rho 21386) (rho 21391) next := by
  exact ⟨rho 21392, rho 21393, rho 21394, rho 21395, rho 21396, r2014, r2015, r2016, r2017, r2018, tail⟩

theorem seg28_scp_node4_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2019 : Seg28.relationRow2019 rho)
    (r2020 : Seg28.relationRow2020 rho)
    (r2021 : Seg28.relationRow2021 rho)
    (r2022 : Seg28.relationRow2022 rho)
    (r2023 : Seg28.relationRow2023 rho)
    (tail : next (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg54 (rho 21201) (rho 21206) (rho 21211) (rho 21216) (rho 21221) (rho 21226) (rho 21231) (rho 21236) (rho 21241) (rho 21246) (rho 21251) (rho 21256) (rho 21261) (rho 21266) (rho 21271) (rho 21276) (rho 21281) (rho 21286) (rho 21291) (rho 21296) (rho 21301) (rho 21306) (rho 21311) (rho 21316) (rho 21321) (rho 21326) (rho 21331) (rho 21336) (rho 21341) (rho 21346) (rho 21351) (rho 21356) (rho 21361) (rho 21366) (rho 21371) (rho 21376) (rho 21381) (rho 21386) (rho 21391) (rho 21396) next := by
  exact ⟨rho 21397, rho 21398, rho 21399, rho 21400, rho 21401, r2019, r2020, r2021, r2022, r2023, tail⟩

theorem seg28_scp_node4_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2024 : Seg28.relationRow2024 rho)
    (r2025 : Seg28.relationRow2025 rho)
    (r2026 : Seg28.relationRow2026 rho)
    (r2027 : Seg28.relationRow2027 rho)
    (r2028 : Seg28.relationRow2028 rho)
    (tail : next (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg55 (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) next := by
  exact ⟨rho 21402, rho 21403, rho 21404, rho 21405, rho 21406, r2024, r2025, r2026, r2027, r2028, tail⟩

theorem seg28_scp_node4_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2029 : Seg28.relationRow2029 rho)
    (r2030 : Seg28.relationRow2030 rho)
    (r2031 : Seg28.relationRow2031 rho)
    (r2032 : Seg28.relationRow2032 rho)
    (r2033 : Seg28.relationRow2033 rho)
    (tail : next (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) (rho 21411)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg56 (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) next := by
  exact ⟨rho 21407, rho 21408, rho 21409, rho 21410, rho 21411, r2029, r2030, r2031, r2032, r2033, tail⟩

theorem seg28_scp_node4_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2034 : Seg28.relationRow2034 rho)
    (r2035 : Seg28.relationRow2035 rho)
    (r2036 : Seg28.relationRow2036 rho)
    (r2037 : Seg28.relationRow2037 rho)
    (r2038 : Seg28.relationRow2038 rho)
    (tail : next (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) (rho 21411) (rho 21416)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg57 (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) (rho 21411) next := by
  exact ⟨rho 21412, rho 21413, rho 21414, rho 21415, rho 21416, r2034, r2035, r2036, r2037, r2038, tail⟩

theorem seg28_scp_node4_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2039 : Seg28.relationRow2039 rho)
    (r2040 : Seg28.relationRow2040 rho)
    (r2041 : Seg28.relationRow2041 rho)
    (r2042 : Seg28.relationRow2042 rho)
    (r2043 : Seg28.relationRow2043 rho)
    (tail : next (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) (rho 21411) (rho 21416) (rho 21421)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg58 (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) (rho 21411) (rho 21416) next := by
  exact ⟨rho 21417, rho 21418, rho 21419, rho 21420, rho 21421, r2039, r2040, r2041, r2042, r2043, tail⟩

theorem seg28_scp_node4_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2044 : Seg28.relationRow2044 rho)
    (r2045 : Seg28.relationRow2045 rho)
    (r2046 : Seg28.relationRow2046 rho)
    (r2047 : Seg28.relationRow2047 rho)
    (r2048 : Seg28.relationRow2048 rho)
    (tail : next (rho 21406) (rho 21411) (rho 21416) (rho 21421) (rho 21426)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg59 (rho 21381) (rho 21386) (rho 21391) (rho 21396) (rho 21401) (rho 21406) (rho 21411) (rho 21416) (rho 21421) next := by
  exact ⟨rho 21422, rho 21423, rho 21424, rho 21425, rho 21426, r2044, r2045, r2046, r2047, r2048, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

