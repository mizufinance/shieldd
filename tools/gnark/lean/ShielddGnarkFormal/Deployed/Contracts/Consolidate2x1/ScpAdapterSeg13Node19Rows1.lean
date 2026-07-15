import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node19_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7259 : Seg13.relationRow7259 rho)
    (r7260 : Seg13.relationRow7260 rho)
    (r7261 : Seg13.relationRow7261 rho)
    (r7262 : Seg13.relationRow7262 rho)
    (r7263 : Seg13.relationRow7263 rho)
    (tail : next (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) (rho 14400)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg10 (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) next := by
  exact ⟨rho 14396, rho 14397, rho 14398, rho 14399, rho 14400, r7259, r7260, r7261, r7262, r7263, tail⟩

theorem seg13_scp_node19_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7264 : Seg13.relationRow7264 rho)
    (r7265 : Seg13.relationRow7265 rho)
    (r7266 : Seg13.relationRow7266 rho)
    (r7267 : Seg13.relationRow7267 rho)
    (r7268 : Seg13.relationRow7268 rho)
    (tail : next (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) (rho 14400) (rho 14405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg11 (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) (rho 14400) next := by
  exact ⟨rho 14401, rho 14402, rho 14403, rho 14404, rho 14405, r7264, r7265, r7266, r7267, r7268, tail⟩

theorem seg13_scp_node19_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7269 : Seg13.relationRow7269 rho)
    (r7270 : Seg13.relationRow7270 rho)
    (r7271 : Seg13.relationRow7271 rho)
    (r7272 : Seg13.relationRow7272 rho)
    (r7273 : Seg13.relationRow7273 rho)
    (tail : next (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) (rho 14400) (rho 14405) (rho 14410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg12 (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) (rho 14400) (rho 14405) next := by
  exact ⟨rho 14406, rho 14407, rho 14408, rho 14409, rho 14410, r7269, r7270, r7271, r7272, r7273, tail⟩

theorem seg13_scp_node19_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7274 : Seg13.relationRow7274 rho)
    (r7275 : Seg13.relationRow7275 rho)
    (r7276 : Seg13.relationRow7276 rho)
    (r7277 : Seg13.relationRow7277 rho)
    (r7278 : Seg13.relationRow7278 rho)
    (tail : next (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg13 (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395) (rho 14400) (rho 14405) (rho 14410) next := by
  exact ⟨rho 14411, rho 14412, rho 14413, rho 14414, rho 14415, r7274, r7275, r7276, r7277, r7278, tail⟩

theorem seg13_scp_node19_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7279 : Seg13.relationRow7279 rho)
    (r7280 : Seg13.relationRow7280 rho)
    (r7281 : Seg13.relationRow7281 rho)
    (r7282 : Seg13.relationRow7282 rho)
    (r7283 : Seg13.relationRow7283 rho)
    (tail : next (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg14 (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) next := by
  exact ⟨rho 14416, rho 14417, rho 14418, rho 14419, rho 14420, r7279, r7280, r7281, r7282, r7283, tail⟩

theorem seg13_scp_node19_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7284 : Seg13.relationRow7284 rho)
    (r7285 : Seg13.relationRow7285 rho)
    (r7286 : Seg13.relationRow7286 rho)
    (r7287 : Seg13.relationRow7287 rho)
    (r7288 : Seg13.relationRow7288 rho)
    (tail : next (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) (rho 14425)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg15 (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) next := by
  exact ⟨rho 14421, rho 14422, rho 14423, rho 14424, rho 14425, r7284, r7285, r7286, r7287, r7288, tail⟩

theorem seg13_scp_node19_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7289 : Seg13.relationRow7289 rho)
    (r7290 : Seg13.relationRow7290 rho)
    (r7291 : Seg13.relationRow7291 rho)
    (r7292 : Seg13.relationRow7292 rho)
    (r7293 : Seg13.relationRow7293 rho)
    (tail : next (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) (rho 14425) (rho 14430)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg16 (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) (rho 14425) next := by
  exact ⟨rho 14426, rho 14427, rho 14428, rho 14429, rho 14430, r7289, r7290, r7291, r7292, r7293, tail⟩

theorem seg13_scp_node19_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7294 : Seg13.relationRow7294 rho)
    (r7295 : Seg13.relationRow7295 rho)
    (r7296 : Seg13.relationRow7296 rho)
    (r7297 : Seg13.relationRow7297 rho)
    (r7298 : Seg13.relationRow7298 rho)
    (tail : next (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) (rho 14425) (rho 14430) (rho 14435)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg17 (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) (rho 14425) (rho 14430) next := by
  exact ⟨rho 14431, rho 14432, rho 14433, rho 14434, rho 14435, r7294, r7295, r7296, r7297, r7298, tail⟩

theorem seg13_scp_node19_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7299 : Seg13.relationRow7299 rho)
    (r7300 : Seg13.relationRow7300 rho)
    (r7301 : Seg13.relationRow7301 rho)
    (r7302 : Seg13.relationRow7302 rho)
    (r7303 : Seg13.relationRow7303 rho)
    (tail : next (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg18 (rho 14395) (rho 14400) (rho 14405) (rho 14410) (rho 14415) (rho 14420) (rho 14425) (rho 14430) (rho 14435) next := by
  exact ⟨rho 14436, rho 14437, rho 14438, rho 14439, rho 14440, r7299, r7300, r7301, r7302, r7303, tail⟩

theorem seg13_scp_node19_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7304 : Seg13.relationRow7304 rho)
    (r7305 : Seg13.relationRow7305 rho)
    (r7306 : Seg13.relationRow7306 rho)
    (r7307 : Seg13.relationRow7307 rho)
    (r7308 : Seg13.relationRow7308 rho)
    (tail : next (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg19 (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) next := by
  exact ⟨rho 14441, rho 14442, rho 14443, rho 14444, rho 14445, r7304, r7305, r7306, r7307, r7308, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

