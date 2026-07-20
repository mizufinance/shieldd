import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node15_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6003 : Seg13.relationRow6003 rho)
    (r6004 : Seg13.relationRow6004 rho)
    (r6005 : Seg13.relationRow6005 rho)
    (r6006 : Seg13.relationRow6006 rho)
    (r6007 : Seg13.relationRow6007 rho)
    (tail : next (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg50 (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) next := by
  exact ⟨rho 13150, rho 13151, rho 13152, rho 13153, rho 13154, r6003, r6004, r6005, r6006, r6007, tail⟩

theorem seg13_scp_node15_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6008 : Seg13.relationRow6008 rho)
    (r6009 : Seg13.relationRow6009 rho)
    (r6010 : Seg13.relationRow6010 rho)
    (r6011 : Seg13.relationRow6011 rho)
    (r6012 : Seg13.relationRow6012 rho)
    (tail : next (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) (rho 13159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg51 (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) next := by
  exact ⟨rho 13155, rho 13156, rho 13157, rho 13158, rho 13159, r6008, r6009, r6010, r6011, r6012, tail⟩

theorem seg13_scp_node15_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6013 : Seg13.relationRow6013 rho)
    (r6014 : Seg13.relationRow6014 rho)
    (r6015 : Seg13.relationRow6015 rho)
    (r6016 : Seg13.relationRow6016 rho)
    (r6017 : Seg13.relationRow6017 rho)
    (tail : next (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) (rho 13159) (rho 13164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg52 (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) (rho 13159) next := by
  exact ⟨rho 13160, rho 13161, rho 13162, rho 13163, rho 13164, r6013, r6014, r6015, r6016, r6017, tail⟩

theorem seg13_scp_node15_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6018 : Seg13.relationRow6018 rho)
    (r6019 : Seg13.relationRow6019 rho)
    (r6020 : Seg13.relationRow6020 rho)
    (r6021 : Seg13.relationRow6021 rho)
    (r6022 : Seg13.relationRow6022 rho)
    (tail : next (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) (rho 13159) (rho 13164) (rho 13169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg53 (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) (rho 13159) (rho 13164) next := by
  exact ⟨rho 13165, rho 13166, rho 13167, rho 13168, rho 13169, r6018, r6019, r6020, r6021, r6022, tail⟩

theorem seg13_scp_node15_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6023 : Seg13.relationRow6023 rho)
    (r6024 : Seg13.relationRow6024 rho)
    (r6025 : Seg13.relationRow6025 rho)
    (r6026 : Seg13.relationRow6026 rho)
    (r6027 : Seg13.relationRow6027 rho)
    (tail : next (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg54 (rho 12974) (rho 12979) (rho 12984) (rho 12989) (rho 12994) (rho 12999) (rho 13004) (rho 13009) (rho 13014) (rho 13019) (rho 13024) (rho 13029) (rho 13034) (rho 13039) (rho 13044) (rho 13049) (rho 13054) (rho 13059) (rho 13064) (rho 13069) (rho 13074) (rho 13079) (rho 13084) (rho 13089) (rho 13094) (rho 13099) (rho 13104) (rho 13109) (rho 13114) (rho 13119) (rho 13124) (rho 13129) (rho 13134) (rho 13139) (rho 13144) (rho 13149) (rho 13154) (rho 13159) (rho 13164) (rho 13169) next := by
  exact ⟨rho 13170, rho 13171, rho 13172, rho 13173, rho 13174, r6023, r6024, r6025, r6026, r6027, tail⟩

theorem seg13_scp_node15_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6028 : Seg13.relationRow6028 rho)
    (r6029 : Seg13.relationRow6029 rho)
    (r6030 : Seg13.relationRow6030 rho)
    (r6031 : Seg13.relationRow6031 rho)
    (r6032 : Seg13.relationRow6032 rho)
    (tail : next (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg55 (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) next := by
  exact ⟨rho 13175, rho 13176, rho 13177, rho 13178, rho 13179, r6028, r6029, r6030, r6031, r6032, tail⟩

theorem seg13_scp_node15_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6033 : Seg13.relationRow6033 rho)
    (r6034 : Seg13.relationRow6034 rho)
    (r6035 : Seg13.relationRow6035 rho)
    (r6036 : Seg13.relationRow6036 rho)
    (r6037 : Seg13.relationRow6037 rho)
    (tail : next (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) (rho 13184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg56 (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) next := by
  exact ⟨rho 13180, rho 13181, rho 13182, rho 13183, rho 13184, r6033, r6034, r6035, r6036, r6037, tail⟩

theorem seg13_scp_node15_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6038 : Seg13.relationRow6038 rho)
    (r6039 : Seg13.relationRow6039 rho)
    (r6040 : Seg13.relationRow6040 rho)
    (r6041 : Seg13.relationRow6041 rho)
    (r6042 : Seg13.relationRow6042 rho)
    (tail : next (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) (rho 13184) (rho 13189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg57 (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) (rho 13184) next := by
  exact ⟨rho 13185, rho 13186, rho 13187, rho 13188, rho 13189, r6038, r6039, r6040, r6041, r6042, tail⟩

theorem seg13_scp_node15_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6043 : Seg13.relationRow6043 rho)
    (r6044 : Seg13.relationRow6044 rho)
    (r6045 : Seg13.relationRow6045 rho)
    (r6046 : Seg13.relationRow6046 rho)
    (r6047 : Seg13.relationRow6047 rho)
    (tail : next (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) (rho 13184) (rho 13189) (rho 13194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg58 (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) (rho 13184) (rho 13189) next := by
  exact ⟨rho 13190, rho 13191, rho 13192, rho 13193, rho 13194, r6043, r6044, r6045, r6046, r6047, tail⟩

theorem seg13_scp_node15_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6048 : Seg13.relationRow6048 rho)
    (r6049 : Seg13.relationRow6049 rho)
    (r6050 : Seg13.relationRow6050 rho)
    (r6051 : Seg13.relationRow6051 rho)
    (r6052 : Seg13.relationRow6052 rho)
    (tail : next (rho 13179) (rho 13184) (rho 13189) (rho 13194) (rho 13199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg59 (rho 13154) (rho 13159) (rho 13164) (rho 13169) (rho 13174) (rho 13179) (rho 13184) (rho 13189) (rho 13194) next := by
  exact ⟨rho 13195, rho 13196, rho 13197, rho 13198, rho 13199, r6048, r6049, r6050, r6051, r6052, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

