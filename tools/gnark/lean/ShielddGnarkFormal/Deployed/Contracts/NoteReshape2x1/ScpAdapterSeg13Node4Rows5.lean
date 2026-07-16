import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node4_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1999 : Seg13.relationRow1999 rho)
    (r2000 : Seg13.relationRow2000 rho)
    (r2001 : Seg13.relationRow2001 rho)
    (r2002 : Seg13.relationRow2002 rho)
    (r2003 : Seg13.relationRow2003 rho)
    (tail : next (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg50 (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) next := by
  exact ⟨rho 9196, rho 9197, rho 9198, rho 9199, rho 9200, r1999, r2000, r2001, r2002, r2003, tail⟩

theorem seg13_scp_node4_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2004 : Seg13.relationRow2004 rho)
    (r2005 : Seg13.relationRow2005 rho)
    (r2006 : Seg13.relationRow2006 rho)
    (r2007 : Seg13.relationRow2007 rho)
    (r2008 : Seg13.relationRow2008 rho)
    (tail : next (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) (rho 9205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg51 (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) next := by
  exact ⟨rho 9201, rho 9202, rho 9203, rho 9204, rho 9205, r2004, r2005, r2006, r2007, r2008, tail⟩

theorem seg13_scp_node4_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2009 : Seg13.relationRow2009 rho)
    (r2010 : Seg13.relationRow2010 rho)
    (r2011 : Seg13.relationRow2011 rho)
    (r2012 : Seg13.relationRow2012 rho)
    (r2013 : Seg13.relationRow2013 rho)
    (tail : next (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) (rho 9205) (rho 9210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg52 (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) (rho 9205) next := by
  exact ⟨rho 9206, rho 9207, rho 9208, rho 9209, rho 9210, r2009, r2010, r2011, r2012, r2013, tail⟩

theorem seg13_scp_node4_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2014 : Seg13.relationRow2014 rho)
    (r2015 : Seg13.relationRow2015 rho)
    (r2016 : Seg13.relationRow2016 rho)
    (r2017 : Seg13.relationRow2017 rho)
    (r2018 : Seg13.relationRow2018 rho)
    (tail : next (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) (rho 9205) (rho 9210) (rho 9215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg53 (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) (rho 9205) (rho 9210) next := by
  exact ⟨rho 9211, rho 9212, rho 9213, rho 9214, rho 9215, r2014, r2015, r2016, r2017, r2018, tail⟩

theorem seg13_scp_node4_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2019 : Seg13.relationRow2019 rho)
    (r2020 : Seg13.relationRow2020 rho)
    (r2021 : Seg13.relationRow2021 rho)
    (r2022 : Seg13.relationRow2022 rho)
    (r2023 : Seg13.relationRow2023 rho)
    (tail : next (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg54 (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045) (rho 9050) (rho 9055) (rho 9060) (rho 9065) (rho 9070) (rho 9075) (rho 9080) (rho 9085) (rho 9090) (rho 9095) (rho 9100) (rho 9105) (rho 9110) (rho 9115) (rho 9120) (rho 9125) (rho 9130) (rho 9135) (rho 9140) (rho 9145) (rho 9150) (rho 9155) (rho 9160) (rho 9165) (rho 9170) (rho 9175) (rho 9180) (rho 9185) (rho 9190) (rho 9195) (rho 9200) (rho 9205) (rho 9210) (rho 9215) next := by
  exact ⟨rho 9216, rho 9217, rho 9218, rho 9219, rho 9220, r2019, r2020, r2021, r2022, r2023, tail⟩

theorem seg13_scp_node4_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2024 : Seg13.relationRow2024 rho)
    (r2025 : Seg13.relationRow2025 rho)
    (r2026 : Seg13.relationRow2026 rho)
    (r2027 : Seg13.relationRow2027 rho)
    (r2028 : Seg13.relationRow2028 rho)
    (tail : next (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg55 (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) next := by
  exact ⟨rho 9221, rho 9222, rho 9223, rho 9224, rho 9225, r2024, r2025, r2026, r2027, r2028, tail⟩

theorem seg13_scp_node4_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2029 : Seg13.relationRow2029 rho)
    (r2030 : Seg13.relationRow2030 rho)
    (r2031 : Seg13.relationRow2031 rho)
    (r2032 : Seg13.relationRow2032 rho)
    (r2033 : Seg13.relationRow2033 rho)
    (tail : next (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) (rho 9230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg56 (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) next := by
  exact ⟨rho 9226, rho 9227, rho 9228, rho 9229, rho 9230, r2029, r2030, r2031, r2032, r2033, tail⟩

theorem seg13_scp_node4_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2034 : Seg13.relationRow2034 rho)
    (r2035 : Seg13.relationRow2035 rho)
    (r2036 : Seg13.relationRow2036 rho)
    (r2037 : Seg13.relationRow2037 rho)
    (r2038 : Seg13.relationRow2038 rho)
    (tail : next (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) (rho 9230) (rho 9235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg57 (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) (rho 9230) next := by
  exact ⟨rho 9231, rho 9232, rho 9233, rho 9234, rho 9235, r2034, r2035, r2036, r2037, r2038, tail⟩

theorem seg13_scp_node4_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2039 : Seg13.relationRow2039 rho)
    (r2040 : Seg13.relationRow2040 rho)
    (r2041 : Seg13.relationRow2041 rho)
    (r2042 : Seg13.relationRow2042 rho)
    (r2043 : Seg13.relationRow2043 rho)
    (tail : next (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) (rho 9230) (rho 9235) (rho 9240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg58 (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) (rho 9230) (rho 9235) next := by
  exact ⟨rho 9236, rho 9237, rho 9238, rho 9239, rho 9240, r2039, r2040, r2041, r2042, r2043, tail⟩

theorem seg13_scp_node4_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2044 : Seg13.relationRow2044 rho)
    (r2045 : Seg13.relationRow2045 rho)
    (r2046 : Seg13.relationRow2046 rho)
    (r2047 : Seg13.relationRow2047 rho)
    (r2048 : Seg13.relationRow2048 rho)
    (tail : next (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg59 (rho 9200) (rho 9205) (rho 9210) (rho 9215) (rho 9220) (rho 9225) (rho 9230) (rho 9235) (rho 9240) next := by
  exact ⟨rho 9241, rho 9242, rho 9243, rho 9244, rho 9245, r2044, r2045, r2046, r2047, r2048, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

