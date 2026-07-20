import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node13_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5025 : Seg28.relationRow5025 rho)
    (r5026 : Seg28.relationRow5026 rho)
    (r5027 : Seg28.relationRow5027 rho)
    (r5028 : Seg28.relationRow5028 rho)
    (r5029 : Seg28.relationRow5029 rho)
    (tail : next (rho 143) (rho 144) (rho 24356) (rho 24357) (rho 24358) (rho 24359) (rho 24360) (rho 24365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg0 (rho 142) (rho 143) (rho 144) (rho 24355) (rho 24356) (rho 24357) (rho 24358) (rho 24359) (rho 24360) next := by
  exact ⟨rho 24361, rho 24362, rho 24363, rho 24364, rho 24365, r5025, r5026, r5027, r5028, r5029, tail⟩

theorem seg28_scp_node13_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5030 : Seg28.relationRow5030 rho)
    (r5031 : Seg28.relationRow5031 rho)
    (r5032 : Seg28.relationRow5032 rho)
    (r5033 : Seg28.relationRow5033 rho)
    (r5034 : Seg28.relationRow5034 rho)
    (tail : next (rho 143) (rho 144) (rho 24358) (rho 24359) (rho 24360) (rho 24365) (rho 24370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg1 (rho 143) (rho 144) (rho 24356) (rho 24357) (rho 24358) (rho 24359) (rho 24360) (rho 24365) next := by
  exact ⟨rho 24366, rho 24367, rho 24368, rho 24369, rho 24370, r5030, r5031, r5032, r5033, r5034, tail⟩

theorem seg28_scp_node13_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5035 : Seg28.relationRow5035 rho)
    (r5036 : Seg28.relationRow5036 rho)
    (r5037 : Seg28.relationRow5037 rho)
    (r5038 : Seg28.relationRow5038 rho)
    (r5039 : Seg28.relationRow5039 rho)
    (tail : next (rho 144) (rho 24360) (rho 24365) (rho 24370) (rho 24375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg2 (rho 143) (rho 144) (rho 24358) (rho 24359) (rho 24360) (rho 24365) (rho 24370) next := by
  exact ⟨rho 24371, rho 24372, rho 24373, rho 24374, rho 24375, r5035, r5036, r5037, r5038, r5039, tail⟩

theorem seg28_scp_node13_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5040 : Seg28.relationRow5040 rho)
    (r5041 : Seg28.relationRow5041 rho)
    (r5042 : Seg28.relationRow5042 rho)
    (r5043 : Seg28.relationRow5043 rho)
    (r5044 : Seg28.relationRow5044 rho)
    (tail : next (rho 24365) (rho 24370) (rho 24375) (rho 24380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg3 (rho 144) (rho 24360) (rho 24365) (rho 24370) (rho 24375) next := by
  exact ⟨rho 24376, rho 24377, rho 24378, rho 24379, rho 24380, r5040, r5041, r5042, r5043, r5044, tail⟩

theorem seg28_scp_node13_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5045 : Seg28.relationRow5045 rho)
    (r5046 : Seg28.relationRow5046 rho)
    (r5047 : Seg28.relationRow5047 rho)
    (r5048 : Seg28.relationRow5048 rho)
    (r5049 : Seg28.relationRow5049 rho)
    (tail : next (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg4 (rho 24365) (rho 24370) (rho 24375) (rho 24380) next := by
  exact ⟨rho 24381, rho 24382, rho 24383, rho 24384, rho 24385, r5045, r5046, r5047, r5048, r5049, tail⟩

theorem seg28_scp_node13_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5050 : Seg28.relationRow5050 rho)
    (r5051 : Seg28.relationRow5051 rho)
    (r5052 : Seg28.relationRow5052 rho)
    (r5053 : Seg28.relationRow5053 rho)
    (r5054 : Seg28.relationRow5054 rho)
    (tail : next (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) (rho 24390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg5 (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) next := by
  exact ⟨rho 24386, rho 24387, rho 24388, rho 24389, rho 24390, r5050, r5051, r5052, r5053, r5054, tail⟩

theorem seg28_scp_node13_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5055 : Seg28.relationRow5055 rho)
    (r5056 : Seg28.relationRow5056 rho)
    (r5057 : Seg28.relationRow5057 rho)
    (r5058 : Seg28.relationRow5058 rho)
    (r5059 : Seg28.relationRow5059 rho)
    (tail : next (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) (rho 24390) (rho 24395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg6 (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) (rho 24390) next := by
  exact ⟨rho 24391, rho 24392, rho 24393, rho 24394, rho 24395, r5055, r5056, r5057, r5058, r5059, tail⟩

theorem seg28_scp_node13_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5060 : Seg28.relationRow5060 rho)
    (r5061 : Seg28.relationRow5061 rho)
    (r5062 : Seg28.relationRow5062 rho)
    (r5063 : Seg28.relationRow5063 rho)
    (r5064 : Seg28.relationRow5064 rho)
    (tail : next (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) (rho 24390) (rho 24395) (rho 24400)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg7 (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) (rho 24390) (rho 24395) next := by
  exact ⟨rho 24396, rho 24397, rho 24398, rho 24399, rho 24400, r5060, r5061, r5062, r5063, r5064, tail⟩

theorem seg28_scp_node13_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5065 : Seg28.relationRow5065 rho)
    (r5066 : Seg28.relationRow5066 rho)
    (r5067 : Seg28.relationRow5067 rho)
    (r5068 : Seg28.relationRow5068 rho)
    (r5069 : Seg28.relationRow5069 rho)
    (tail : next (rho 24385) (rho 24390) (rho 24395) (rho 24400) (rho 24405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg8 (rho 24365) (rho 24370) (rho 24375) (rho 24380) (rho 24385) (rho 24390) (rho 24395) (rho 24400) next := by
  exact ⟨rho 24401, rho 24402, rho 24403, rho 24404, rho 24405, r5065, r5066, r5067, r5068, r5069, tail⟩

theorem seg28_scp_node13_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5070 : Seg28.relationRow5070 rho)
    (r5071 : Seg28.relationRow5071 rho)
    (r5072 : Seg28.relationRow5072 rho)
    (r5073 : Seg28.relationRow5073 rho)
    (r5074 : Seg28.relationRow5074 rho)
    (tail : next (rho 24385) (rho 24390) (rho 24395) (rho 24400) (rho 24405) (rho 24410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg9 (rho 24385) (rho 24390) (rho 24395) (rho 24400) (rho 24405) next := by
  exact ⟨rho 24406, rho 24407, rho 24408, rho 24409, rho 24410, r5070, r5071, r5072, r5073, r5074, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

