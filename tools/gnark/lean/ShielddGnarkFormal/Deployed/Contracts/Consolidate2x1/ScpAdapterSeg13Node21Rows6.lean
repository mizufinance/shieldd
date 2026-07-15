import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node21_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8237 : Seg13.relationRow8237 rho)
    (r8238 : Seg13.relationRow8238 rho)
    (r8239 : Seg13.relationRow8239 rho)
    (r8240 : Seg13.relationRow8240 rho)
    (r8241 : Seg13.relationRow8241 rho)
    (tail : next (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg60 (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) next := by
  exact ⟨rho 15366, rho 15367, rho 15368, rho 15369, rho 15370, r8237, r8238, r8239, r8240, r8241, tail⟩

theorem seg13_scp_node21_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8242 : Seg13.relationRow8242 rho)
    (r8243 : Seg13.relationRow8243 rho)
    (r8244 : Seg13.relationRow8244 rho)
    (r8245 : Seg13.relationRow8245 rho)
    (r8246 : Seg13.relationRow8246 rho)
    (tail : next (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) (rho 15375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg61 (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) next := by
  exact ⟨rho 15371, rho 15372, rho 15373, rho 15374, rho 15375, r8242, r8243, r8244, r8245, r8246, tail⟩

theorem seg13_scp_node21_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8247 : Seg13.relationRow8247 rho)
    (r8248 : Seg13.relationRow8248 rho)
    (r8249 : Seg13.relationRow8249 rho)
    (r8250 : Seg13.relationRow8250 rho)
    (r8251 : Seg13.relationRow8251 rho)
    (tail : next (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) (rho 15375) (rho 15380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg62 (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) (rho 15375) next := by
  exact ⟨rho 15376, rho 15377, rho 15378, rho 15379, rho 15380, r8247, r8248, r8249, r8250, r8251, tail⟩

theorem seg13_scp_node21_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8252 : Seg13.relationRow8252 rho)
    (r8253 : Seg13.relationRow8253 rho)
    (r8254 : Seg13.relationRow8254 rho)
    (r8255 : Seg13.relationRow8255 rho)
    (r8256 : Seg13.relationRow8256 rho)
    (tail : next (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) (rho 15375) (rho 15380) (rho 15385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg63 (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) (rho 15375) (rho 15380) next := by
  exact ⟨rho 15381, rho 15382, rho 15383, rho 15384, rho 15385, r8252, r8253, r8254, r8255, r8256, tail⟩

theorem seg13_scp_node21_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8257 : Seg13.relationRow8257 rho)
    (r8258 : Seg13.relationRow8258 rho)
    (r8259 : Seg13.relationRow8259 rho)
    (r8260 : Seg13.relationRow8260 rho)
    (r8261 : Seg13.relationRow8261 rho)
    (tail : next (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg64 (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365) (rho 15370) (rho 15375) (rho 15380) (rho 15385) next := by
  exact ⟨rho 15386, rho 15387, rho 15388, rho 15389, rho 15390, r8257, r8258, r8259, r8260, r8261, tail⟩

theorem seg13_scp_node21_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8262 : Seg13.relationRow8262 rho)
    (r8263 : Seg13.relationRow8263 rho)
    (r8264 : Seg13.relationRow8264 rho)
    (r8265 : Seg13.relationRow8265 rho)
    (r8266 : Seg13.relationRow8266 rho)
    (tail : next (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg65 (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) next := by
  exact ⟨rho 15391, rho 15392, rho 15393, rho 15394, rho 15395, r8262, r8263, r8264, r8265, r8266, tail⟩

theorem seg13_scp_node21_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8267 : Seg13.relationRow8267 rho)
    (r8268 : Seg13.relationRow8268 rho)
    (r8269 : Seg13.relationRow8269 rho)
    (r8270 : Seg13.relationRow8270 rho)
    (r8271 : Seg13.relationRow8271 rho)
    (tail : next (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) (rho 15400)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg66 (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) next := by
  exact ⟨rho 15396, rho 15397, rho 15398, rho 15399, rho 15400, r8267, r8268, r8269, r8270, r8271, tail⟩

theorem seg13_scp_node21_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8272 : Seg13.relationRow8272 rho)
    (r8273 : Seg13.relationRow8273 rho)
    (r8274 : Seg13.relationRow8274 rho)
    (r8275 : Seg13.relationRow8275 rho)
    (r8276 : Seg13.relationRow8276 rho)
    (tail : next (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) (rho 15400) (rho 15405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg67 (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) (rho 15400) next := by
  exact ⟨rho 15401, rho 15402, rho 15403, rho 15404, rho 15405, r8272, r8273, r8274, r8275, r8276, tail⟩

theorem seg13_scp_node21_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8277 : Seg13.relationRow8277 rho)
    (r8278 : Seg13.relationRow8278 rho)
    (r8279 : Seg13.relationRow8279 rho)
    (r8280 : Seg13.relationRow8280 rho)
    (r8281 : Seg13.relationRow8281 rho)
    (tail : next (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) (rho 15400) (rho 15405) (rho 15410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg68 (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) (rho 15400) (rho 15405) next := by
  exact ⟨rho 15406, rho 15407, rho 15408, rho 15409, rho 15410, r8277, r8278, r8279, r8280, r8281, tail⟩

theorem seg13_scp_node21_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8282 : Seg13.relationRow8282 rho)
    (r8283 : Seg13.relationRow8283 rho)
    (r8284 : Seg13.relationRow8284 rho)
    (r8285 : Seg13.relationRow8285 rho)
    (r8286 : Seg13.relationRow8286 rho)
    (tail : next (rho 15395) (rho 15400) (rho 15405) (rho 15410) (rho 15415)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg69 (rho 15370) (rho 15375) (rho 15380) (rho 15385) (rho 15390) (rho 15395) (rho 15400) (rho 15405) (rho 15410) next := by
  exact ⟨rho 15411, rho 15412, rho 15413, rho 15414, rho 15415, r8282, r8283, r8284, r8285, r8286, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

