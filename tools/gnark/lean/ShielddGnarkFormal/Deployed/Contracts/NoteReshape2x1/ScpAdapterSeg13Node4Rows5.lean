import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

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
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg50 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) next := by
  exact ⟨rho 9190, rho 9191, rho 9192, rho 9193, rho 9194, r1999, r2000, r2001, r2002, r2003, tail⟩

theorem seg13_scp_node4_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2004 : Seg13.relationRow2004 rho)
    (r2005 : Seg13.relationRow2005 rho)
    (r2006 : Seg13.relationRow2006 rho)
    (r2007 : Seg13.relationRow2007 rho)
    (r2008 : Seg13.relationRow2008 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) (rho 9199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg51 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) next := by
  exact ⟨rho 9195, rho 9196, rho 9197, rho 9198, rho 9199, r2004, r2005, r2006, r2007, r2008, tail⟩

theorem seg13_scp_node4_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2009 : Seg13.relationRow2009 rho)
    (r2010 : Seg13.relationRow2010 rho)
    (r2011 : Seg13.relationRow2011 rho)
    (r2012 : Seg13.relationRow2012 rho)
    (r2013 : Seg13.relationRow2013 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) (rho 9199) (rho 9204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg52 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) (rho 9199) next := by
  exact ⟨rho 9200, rho 9201, rho 9202, rho 9203, rho 9204, r2009, r2010, r2011, r2012, r2013, tail⟩

theorem seg13_scp_node4_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2014 : Seg13.relationRow2014 rho)
    (r2015 : Seg13.relationRow2015 rho)
    (r2016 : Seg13.relationRow2016 rho)
    (r2017 : Seg13.relationRow2017 rho)
    (r2018 : Seg13.relationRow2018 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) (rho 9199) (rho 9204) (rho 9209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg53 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) (rho 9199) (rho 9204) next := by
  exact ⟨rho 9205, rho 9206, rho 9207, rho 9208, rho 9209, r2014, r2015, r2016, r2017, r2018, tail⟩

theorem seg13_scp_node4_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2019 : Seg13.relationRow2019 rho)
    (r2020 : Seg13.relationRow2020 rho)
    (r2021 : Seg13.relationRow2021 rho)
    (r2022 : Seg13.relationRow2022 rho)
    (r2023 : Seg13.relationRow2023 rho)
    (tail : next (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg54 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089) (rho 9094) (rho 9099) (rho 9104) (rho 9109) (rho 9114) (rho 9119) (rho 9124) (rho 9129) (rho 9134) (rho 9139) (rho 9144) (rho 9149) (rho 9154) (rho 9159) (rho 9164) (rho 9169) (rho 9174) (rho 9179) (rho 9184) (rho 9189) (rho 9194) (rho 9199) (rho 9204) (rho 9209) next := by
  exact ⟨rho 9210, rho 9211, rho 9212, rho 9213, rho 9214, r2019, r2020, r2021, r2022, r2023, tail⟩

theorem seg13_scp_node4_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2024 : Seg13.relationRow2024 rho)
    (r2025 : Seg13.relationRow2025 rho)
    (r2026 : Seg13.relationRow2026 rho)
    (r2027 : Seg13.relationRow2027 rho)
    (r2028 : Seg13.relationRow2028 rho)
    (tail : next (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg55 (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) next := by
  exact ⟨rho 9215, rho 9216, rho 9217, rho 9218, rho 9219, r2024, r2025, r2026, r2027, r2028, tail⟩

theorem seg13_scp_node4_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2029 : Seg13.relationRow2029 rho)
    (r2030 : Seg13.relationRow2030 rho)
    (r2031 : Seg13.relationRow2031 rho)
    (r2032 : Seg13.relationRow2032 rho)
    (r2033 : Seg13.relationRow2033 rho)
    (tail : next (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) (rho 9224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg56 (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) next := by
  exact ⟨rho 9220, rho 9221, rho 9222, rho 9223, rho 9224, r2029, r2030, r2031, r2032, r2033, tail⟩

theorem seg13_scp_node4_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2034 : Seg13.relationRow2034 rho)
    (r2035 : Seg13.relationRow2035 rho)
    (r2036 : Seg13.relationRow2036 rho)
    (r2037 : Seg13.relationRow2037 rho)
    (r2038 : Seg13.relationRow2038 rho)
    (tail : next (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) (rho 9224) (rho 9229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg57 (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) (rho 9224) next := by
  exact ⟨rho 9225, rho 9226, rho 9227, rho 9228, rho 9229, r2034, r2035, r2036, r2037, r2038, tail⟩

theorem seg13_scp_node4_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2039 : Seg13.relationRow2039 rho)
    (r2040 : Seg13.relationRow2040 rho)
    (r2041 : Seg13.relationRow2041 rho)
    (r2042 : Seg13.relationRow2042 rho)
    (r2043 : Seg13.relationRow2043 rho)
    (tail : next (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) (rho 9224) (rho 9229) (rho 9234)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg58 (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) (rho 9224) (rho 9229) next := by
  exact ⟨rho 9230, rho 9231, rho 9232, rho 9233, rho 9234, r2039, r2040, r2041, r2042, r2043, tail⟩

theorem seg13_scp_node4_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2044 : Seg13.relationRow2044 rho)
    (r2045 : Seg13.relationRow2045 rho)
    (r2046 : Seg13.relationRow2046 rho)
    (r2047 : Seg13.relationRow2047 rho)
    (r2048 : Seg13.relationRow2048 rho)
    (tail : next (rho 9219) (rho 9224) (rho 9229) (rho 9234) (rho 9239)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg59 (rho 9194) (rho 9199) (rho 9204) (rho 9209) (rho 9214) (rho 9219) (rho 9224) (rho 9229) (rho 9234) next := by
  exact ⟨rho 9235, rho 9236, rho 9237, rho 9238, rho 9239, r2044, r2045, r2046, r2047, r2048, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

