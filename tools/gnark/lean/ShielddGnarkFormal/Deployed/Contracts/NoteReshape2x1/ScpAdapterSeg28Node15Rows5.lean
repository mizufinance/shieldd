import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node15_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6003 : Seg28.relationRow6003 rho)
    (r6004 : Seg28.relationRow6004 rho)
    (r6005 : Seg28.relationRow6005 rho)
    (r6006 : Seg28.relationRow6006 rho)
    (r6007 : Seg28.relationRow6007 rho)
    (tail : next (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg50 (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) next := by
  exact ⟨rho 25331, rho 25332, rho 25333, rho 25334, rho 25335, r6003, r6004, r6005, r6006, r6007, tail⟩

theorem seg28_scp_node15_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6008 : Seg28.relationRow6008 rho)
    (r6009 : Seg28.relationRow6009 rho)
    (r6010 : Seg28.relationRow6010 rho)
    (r6011 : Seg28.relationRow6011 rho)
    (r6012 : Seg28.relationRow6012 rho)
    (tail : next (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) (rho 25340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg51 (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) next := by
  exact ⟨rho 25336, rho 25337, rho 25338, rho 25339, rho 25340, r6008, r6009, r6010, r6011, r6012, tail⟩

theorem seg28_scp_node15_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6013 : Seg28.relationRow6013 rho)
    (r6014 : Seg28.relationRow6014 rho)
    (r6015 : Seg28.relationRow6015 rho)
    (r6016 : Seg28.relationRow6016 rho)
    (r6017 : Seg28.relationRow6017 rho)
    (tail : next (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) (rho 25340) (rho 25345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg52 (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) (rho 25340) next := by
  exact ⟨rho 25341, rho 25342, rho 25343, rho 25344, rho 25345, r6013, r6014, r6015, r6016, r6017, tail⟩

theorem seg28_scp_node15_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6018 : Seg28.relationRow6018 rho)
    (r6019 : Seg28.relationRow6019 rho)
    (r6020 : Seg28.relationRow6020 rho)
    (r6021 : Seg28.relationRow6021 rho)
    (r6022 : Seg28.relationRow6022 rho)
    (tail : next (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) (rho 25340) (rho 25345) (rho 25350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg53 (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) (rho 25340) (rho 25345) next := by
  exact ⟨rho 25346, rho 25347, rho 25348, rho 25349, rho 25350, r6018, r6019, r6020, r6021, r6022, tail⟩

theorem seg28_scp_node15_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6023 : Seg28.relationRow6023 rho)
    (r6024 : Seg28.relationRow6024 rho)
    (r6025 : Seg28.relationRow6025 rho)
    (r6026 : Seg28.relationRow6026 rho)
    (r6027 : Seg28.relationRow6027 rho)
    (tail : next (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg54 (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180) (rho 25185) (rho 25190) (rho 25195) (rho 25200) (rho 25205) (rho 25210) (rho 25215) (rho 25220) (rho 25225) (rho 25230) (rho 25235) (rho 25240) (rho 25245) (rho 25250) (rho 25255) (rho 25260) (rho 25265) (rho 25270) (rho 25275) (rho 25280) (rho 25285) (rho 25290) (rho 25295) (rho 25300) (rho 25305) (rho 25310) (rho 25315) (rho 25320) (rho 25325) (rho 25330) (rho 25335) (rho 25340) (rho 25345) (rho 25350) next := by
  exact ⟨rho 25351, rho 25352, rho 25353, rho 25354, rho 25355, r6023, r6024, r6025, r6026, r6027, tail⟩

theorem seg28_scp_node15_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6028 : Seg28.relationRow6028 rho)
    (r6029 : Seg28.relationRow6029 rho)
    (r6030 : Seg28.relationRow6030 rho)
    (r6031 : Seg28.relationRow6031 rho)
    (r6032 : Seg28.relationRow6032 rho)
    (tail : next (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg55 (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) next := by
  exact ⟨rho 25356, rho 25357, rho 25358, rho 25359, rho 25360, r6028, r6029, r6030, r6031, r6032, tail⟩

theorem seg28_scp_node15_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6033 : Seg28.relationRow6033 rho)
    (r6034 : Seg28.relationRow6034 rho)
    (r6035 : Seg28.relationRow6035 rho)
    (r6036 : Seg28.relationRow6036 rho)
    (r6037 : Seg28.relationRow6037 rho)
    (tail : next (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) (rho 25365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg56 (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) next := by
  exact ⟨rho 25361, rho 25362, rho 25363, rho 25364, rho 25365, r6033, r6034, r6035, r6036, r6037, tail⟩

theorem seg28_scp_node15_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6038 : Seg28.relationRow6038 rho)
    (r6039 : Seg28.relationRow6039 rho)
    (r6040 : Seg28.relationRow6040 rho)
    (r6041 : Seg28.relationRow6041 rho)
    (r6042 : Seg28.relationRow6042 rho)
    (tail : next (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) (rho 25365) (rho 25370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg57 (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) (rho 25365) next := by
  exact ⟨rho 25366, rho 25367, rho 25368, rho 25369, rho 25370, r6038, r6039, r6040, r6041, r6042, tail⟩

theorem seg28_scp_node15_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6043 : Seg28.relationRow6043 rho)
    (r6044 : Seg28.relationRow6044 rho)
    (r6045 : Seg28.relationRow6045 rho)
    (r6046 : Seg28.relationRow6046 rho)
    (r6047 : Seg28.relationRow6047 rho)
    (tail : next (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) (rho 25365) (rho 25370) (rho 25375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg58 (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) (rho 25365) (rho 25370) next := by
  exact ⟨rho 25371, rho 25372, rho 25373, rho 25374, rho 25375, r6043, r6044, r6045, r6046, r6047, tail⟩

theorem seg28_scp_node15_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6048 : Seg28.relationRow6048 rho)
    (r6049 : Seg28.relationRow6049 rho)
    (r6050 : Seg28.relationRow6050 rho)
    (r6051 : Seg28.relationRow6051 rho)
    (r6052 : Seg28.relationRow6052 rho)
    (tail : next (rho 25360) (rho 25365) (rho 25370) (rho 25375) (rho 25380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg59 (rho 25335) (rho 25340) (rho 25345) (rho 25350) (rho 25355) (rho 25360) (rho 25365) (rho 25370) (rho 25375) next := by
  exact ⟨rho 25376, rho 25377, rho 25378, rho 25379, rho 25380, r6048, r6049, r6050, r6051, r6052, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

