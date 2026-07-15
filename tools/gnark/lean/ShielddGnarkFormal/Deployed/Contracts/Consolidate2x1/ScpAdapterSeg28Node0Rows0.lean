import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node0_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r293 : Seg28.relationRow293 rho)
    (r294 : Seg28.relationRow294 rho)
    (r295 : Seg28.relationRow295 rho)
    (r296 : Seg28.relationRow296 rho)
    (r297 : Seg28.relationRow297 rho)
    (tail : next (rho 185) (rho 186) (rho 19682) (rho 19683) (rho 19684) (rho 19685) (rho 19686) (rho 19691)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg0 (rho 184) (rho 185) (rho 186) (rho 19681) (rho 19682) (rho 19683) (rho 19684) (rho 19685) (rho 19686) next := by
  exact ⟨rho 19687, rho 19688, rho 19689, rho 19690, rho 19691, r293, r294, r295, r296, r297, tail⟩

theorem seg28_scp_node0_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r298 : Seg28.relationRow298 rho)
    (r299 : Seg28.relationRow299 rho)
    (r300 : Seg28.relationRow300 rho)
    (r301 : Seg28.relationRow301 rho)
    (r302 : Seg28.relationRow302 rho)
    (tail : next (rho 185) (rho 186) (rho 19684) (rho 19685) (rho 19686) (rho 19691) (rho 19696)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg1 (rho 185) (rho 186) (rho 19682) (rho 19683) (rho 19684) (rho 19685) (rho 19686) (rho 19691) next := by
  exact ⟨rho 19692, rho 19693, rho 19694, rho 19695, rho 19696, r298, r299, r300, r301, r302, tail⟩

theorem seg28_scp_node0_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r303 : Seg28.relationRow303 rho)
    (r304 : Seg28.relationRow304 rho)
    (r305 : Seg28.relationRow305 rho)
    (r306 : Seg28.relationRow306 rho)
    (r307 : Seg28.relationRow307 rho)
    (tail : next (rho 186) (rho 19686) (rho 19691) (rho 19696) (rho 19701)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg2 (rho 185) (rho 186) (rho 19684) (rho 19685) (rho 19686) (rho 19691) (rho 19696) next := by
  exact ⟨rho 19697, rho 19698, rho 19699, rho 19700, rho 19701, r303, r304, r305, r306, r307, tail⟩

theorem seg28_scp_node0_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r308 : Seg28.relationRow308 rho)
    (r309 : Seg28.relationRow309 rho)
    (r310 : Seg28.relationRow310 rho)
    (r311 : Seg28.relationRow311 rho)
    (r312 : Seg28.relationRow312 rho)
    (tail : next (rho 19691) (rho 19696) (rho 19701) (rho 19706)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg3 (rho 186) (rho 19686) (rho 19691) (rho 19696) (rho 19701) next := by
  exact ⟨rho 19702, rho 19703, rho 19704, rho 19705, rho 19706, r308, r309, r310, r311, r312, tail⟩

theorem seg28_scp_node0_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r313 : Seg28.relationRow313 rho)
    (r314 : Seg28.relationRow314 rho)
    (r315 : Seg28.relationRow315 rho)
    (r316 : Seg28.relationRow316 rho)
    (r317 : Seg28.relationRow317 rho)
    (tail : next (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg4 (rho 19691) (rho 19696) (rho 19701) (rho 19706) next := by
  exact ⟨rho 19707, rho 19708, rho 19709, rho 19710, rho 19711, r313, r314, r315, r316, r317, tail⟩

theorem seg28_scp_node0_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r318 : Seg28.relationRow318 rho)
    (r319 : Seg28.relationRow319 rho)
    (r320 : Seg28.relationRow320 rho)
    (r321 : Seg28.relationRow321 rho)
    (r322 : Seg28.relationRow322 rho)
    (tail : next (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) (rho 19716)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg5 (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) next := by
  exact ⟨rho 19712, rho 19713, rho 19714, rho 19715, rho 19716, r318, r319, r320, r321, r322, tail⟩

theorem seg28_scp_node0_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r323 : Seg28.relationRow323 rho)
    (r324 : Seg28.relationRow324 rho)
    (r325 : Seg28.relationRow325 rho)
    (r326 : Seg28.relationRow326 rho)
    (r327 : Seg28.relationRow327 rho)
    (tail : next (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) (rho 19716) (rho 19721)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg6 (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) (rho 19716) next := by
  exact ⟨rho 19717, rho 19718, rho 19719, rho 19720, rho 19721, r323, r324, r325, r326, r327, tail⟩

theorem seg28_scp_node0_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r328 : Seg28.relationRow328 rho)
    (r329 : Seg28.relationRow329 rho)
    (r330 : Seg28.relationRow330 rho)
    (r331 : Seg28.relationRow331 rho)
    (r332 : Seg28.relationRow332 rho)
    (tail : next (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) (rho 19716) (rho 19721) (rho 19726)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg7 (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) (rho 19716) (rho 19721) next := by
  exact ⟨rho 19722, rho 19723, rho 19724, rho 19725, rho 19726, r328, r329, r330, r331, r332, tail⟩

theorem seg28_scp_node0_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r333 : Seg28.relationRow333 rho)
    (r334 : Seg28.relationRow334 rho)
    (r335 : Seg28.relationRow335 rho)
    (r336 : Seg28.relationRow336 rho)
    (r337 : Seg28.relationRow337 rho)
    (tail : next (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg8 (rho 19691) (rho 19696) (rho 19701) (rho 19706) (rho 19711) (rho 19716) (rho 19721) (rho 19726) next := by
  exact ⟨rho 19727, rho 19728, rho 19729, rho 19730, rho 19731, r333, r334, r335, r336, r337, tail⟩

theorem seg28_scp_node0_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r338 : Seg28.relationRow338 rho)
    (r339 : Seg28.relationRow339 rho)
    (r340 : Seg28.relationRow340 rho)
    (r341 : Seg28.relationRow341 rho)
    (r342 : Seg28.relationRow342 rho)
    (tail : next (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg9 (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) next := by
  exact ⟨rho 19732, rho 19733, rho 19734, rho 19735, rho 19736, r338, r339, r340, r341, r342, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

