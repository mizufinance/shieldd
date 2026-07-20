import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

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
    (tail : next (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg50 (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) next := by
  exact ⟨rho 21371, rho 21372, rho 21373, rho 21374, rho 21375, r1999, r2000, r2001, r2002, r2003, tail⟩

theorem seg28_scp_node4_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2004 : Seg28.relationRow2004 rho)
    (r2005 : Seg28.relationRow2005 rho)
    (r2006 : Seg28.relationRow2006 rho)
    (r2007 : Seg28.relationRow2007 rho)
    (r2008 : Seg28.relationRow2008 rho)
    (tail : next (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) (rho 21380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg51 (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) next := by
  exact ⟨rho 21376, rho 21377, rho 21378, rho 21379, rho 21380, r2004, r2005, r2006, r2007, r2008, tail⟩

theorem seg28_scp_node4_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2009 : Seg28.relationRow2009 rho)
    (r2010 : Seg28.relationRow2010 rho)
    (r2011 : Seg28.relationRow2011 rho)
    (r2012 : Seg28.relationRow2012 rho)
    (r2013 : Seg28.relationRow2013 rho)
    (tail : next (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) (rho 21380) (rho 21385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg52 (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) (rho 21380) next := by
  exact ⟨rho 21381, rho 21382, rho 21383, rho 21384, rho 21385, r2009, r2010, r2011, r2012, r2013, tail⟩

theorem seg28_scp_node4_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2014 : Seg28.relationRow2014 rho)
    (r2015 : Seg28.relationRow2015 rho)
    (r2016 : Seg28.relationRow2016 rho)
    (r2017 : Seg28.relationRow2017 rho)
    (r2018 : Seg28.relationRow2018 rho)
    (tail : next (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) (rho 21380) (rho 21385) (rho 21390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg53 (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) (rho 21380) (rho 21385) next := by
  exact ⟨rho 21386, rho 21387, rho 21388, rho 21389, rho 21390, r2014, r2015, r2016, r2017, r2018, tail⟩

theorem seg28_scp_node4_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2019 : Seg28.relationRow2019 rho)
    (r2020 : Seg28.relationRow2020 rho)
    (r2021 : Seg28.relationRow2021 rho)
    (r2022 : Seg28.relationRow2022 rho)
    (r2023 : Seg28.relationRow2023 rho)
    (tail : next (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg54 (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220) (rho 21225) (rho 21230) (rho 21235) (rho 21240) (rho 21245) (rho 21250) (rho 21255) (rho 21260) (rho 21265) (rho 21270) (rho 21275) (rho 21280) (rho 21285) (rho 21290) (rho 21295) (rho 21300) (rho 21305) (rho 21310) (rho 21315) (rho 21320) (rho 21325) (rho 21330) (rho 21335) (rho 21340) (rho 21345) (rho 21350) (rho 21355) (rho 21360) (rho 21365) (rho 21370) (rho 21375) (rho 21380) (rho 21385) (rho 21390) next := by
  exact ⟨rho 21391, rho 21392, rho 21393, rho 21394, rho 21395, r2019, r2020, r2021, r2022, r2023, tail⟩

theorem seg28_scp_node4_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2024 : Seg28.relationRow2024 rho)
    (r2025 : Seg28.relationRow2025 rho)
    (r2026 : Seg28.relationRow2026 rho)
    (r2027 : Seg28.relationRow2027 rho)
    (r2028 : Seg28.relationRow2028 rho)
    (tail : next (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg55 (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) next := by
  exact ⟨rho 21396, rho 21397, rho 21398, rho 21399, rho 21400, r2024, r2025, r2026, r2027, r2028, tail⟩

theorem seg28_scp_node4_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2029 : Seg28.relationRow2029 rho)
    (r2030 : Seg28.relationRow2030 rho)
    (r2031 : Seg28.relationRow2031 rho)
    (r2032 : Seg28.relationRow2032 rho)
    (r2033 : Seg28.relationRow2033 rho)
    (tail : next (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) (rho 21405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg56 (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) next := by
  exact ⟨rho 21401, rho 21402, rho 21403, rho 21404, rho 21405, r2029, r2030, r2031, r2032, r2033, tail⟩

theorem seg28_scp_node4_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2034 : Seg28.relationRow2034 rho)
    (r2035 : Seg28.relationRow2035 rho)
    (r2036 : Seg28.relationRow2036 rho)
    (r2037 : Seg28.relationRow2037 rho)
    (r2038 : Seg28.relationRow2038 rho)
    (tail : next (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) (rho 21405) (rho 21410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg57 (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) (rho 21405) next := by
  exact ⟨rho 21406, rho 21407, rho 21408, rho 21409, rho 21410, r2034, r2035, r2036, r2037, r2038, tail⟩

theorem seg28_scp_node4_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2039 : Seg28.relationRow2039 rho)
    (r2040 : Seg28.relationRow2040 rho)
    (r2041 : Seg28.relationRow2041 rho)
    (r2042 : Seg28.relationRow2042 rho)
    (r2043 : Seg28.relationRow2043 rho)
    (tail : next (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) (rho 21405) (rho 21410) (rho 21415)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg58 (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) (rho 21405) (rho 21410) next := by
  exact ⟨rho 21411, rho 21412, rho 21413, rho 21414, rho 21415, r2039, r2040, r2041, r2042, r2043, tail⟩

theorem seg28_scp_node4_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2044 : Seg28.relationRow2044 rho)
    (r2045 : Seg28.relationRow2045 rho)
    (r2046 : Seg28.relationRow2046 rho)
    (r2047 : Seg28.relationRow2047 rho)
    (r2048 : Seg28.relationRow2048 rho)
    (tail : next (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg59 (rho 21375) (rho 21380) (rho 21385) (rho 21390) (rho 21395) (rho 21400) (rho 21405) (rho 21410) (rho 21415) next := by
  exact ⟨rho 21416, rho 21417, rho 21418, rho 21419, rho 21420, r2044, r2045, r2046, r2047, r2048, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

