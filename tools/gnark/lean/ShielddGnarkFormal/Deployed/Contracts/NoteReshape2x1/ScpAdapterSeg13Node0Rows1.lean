import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node0_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r343 : Seg13.relationRow343 rho)
    (r344 : Seg13.relationRow344 rho)
    (r345 : Seg13.relationRow345 rho)
    (r346 : Seg13.relationRow346 rho)
    (r347 : Seg13.relationRow347 rho)
    (tail : next (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) (rho 7554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg10 (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) next := by
  exact ⟨rho 7550, rho 7551, rho 7552, rho 7553, rho 7554, r343, r344, r345, r346, r347, tail⟩

theorem seg13_scp_node0_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r348 : Seg13.relationRow348 rho)
    (r349 : Seg13.relationRow349 rho)
    (r350 : Seg13.relationRow350 rho)
    (r351 : Seg13.relationRow351 rho)
    (r352 : Seg13.relationRow352 rho)
    (tail : next (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) (rho 7554) (rho 7559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg11 (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) (rho 7554) next := by
  exact ⟨rho 7555, rho 7556, rho 7557, rho 7558, rho 7559, r348, r349, r350, r351, r352, tail⟩

theorem seg13_scp_node0_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r353 : Seg13.relationRow353 rho)
    (r354 : Seg13.relationRow354 rho)
    (r355 : Seg13.relationRow355 rho)
    (r356 : Seg13.relationRow356 rho)
    (r357 : Seg13.relationRow357 rho)
    (tail : next (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) (rho 7554) (rho 7559) (rho 7564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg12 (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) (rho 7554) (rho 7559) next := by
  exact ⟨rho 7560, rho 7561, rho 7562, rho 7563, rho 7564, r353, r354, r355, r356, r357, tail⟩

theorem seg13_scp_node0_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r358 : Seg13.relationRow358 rho)
    (r359 : Seg13.relationRow359 rho)
    (r360 : Seg13.relationRow360 rho)
    (r361 : Seg13.relationRow361 rho)
    (r362 : Seg13.relationRow362 rho)
    (tail : next (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg13 (rho 7524) (rho 7529) (rho 7534) (rho 7539) (rho 7544) (rho 7549) (rho 7554) (rho 7559) (rho 7564) next := by
  exact ⟨rho 7565, rho 7566, rho 7567, rho 7568, rho 7569, r358, r359, r360, r361, r362, tail⟩

theorem seg13_scp_node0_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r363 : Seg13.relationRow363 rho)
    (r364 : Seg13.relationRow364 rho)
    (r365 : Seg13.relationRow365 rho)
    (r366 : Seg13.relationRow366 rho)
    (r367 : Seg13.relationRow367 rho)
    (tail : next (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg14 (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) next := by
  exact ⟨rho 7570, rho 7571, rho 7572, rho 7573, rho 7574, r363, r364, r365, r366, r367, tail⟩

theorem seg13_scp_node0_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r368 : Seg13.relationRow368 rho)
    (r369 : Seg13.relationRow369 rho)
    (r370 : Seg13.relationRow370 rho)
    (r371 : Seg13.relationRow371 rho)
    (r372 : Seg13.relationRow372 rho)
    (tail : next (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) (rho 7579)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg15 (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) next := by
  exact ⟨rho 7575, rho 7576, rho 7577, rho 7578, rho 7579, r368, r369, r370, r371, r372, tail⟩

theorem seg13_scp_node0_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r373 : Seg13.relationRow373 rho)
    (r374 : Seg13.relationRow374 rho)
    (r375 : Seg13.relationRow375 rho)
    (r376 : Seg13.relationRow376 rho)
    (r377 : Seg13.relationRow377 rho)
    (tail : next (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg16 (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) (rho 7579) next := by
  exact ⟨rho 7580, rho 7581, rho 7582, rho 7583, rho 7584, r373, r374, r375, r376, r377, tail⟩

theorem seg13_scp_node0_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r378 : Seg13.relationRow378 rho)
    (r379 : Seg13.relationRow379 rho)
    (r380 : Seg13.relationRow380 rho)
    (r381 : Seg13.relationRow381 rho)
    (r382 : Seg13.relationRow382 rho)
    (tail : next (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg17 (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) next := by
  exact ⟨rho 7585, rho 7586, rho 7587, rho 7588, rho 7589, r378, r379, r380, r381, r382, tail⟩

theorem seg13_scp_node0_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r383 : Seg13.relationRow383 rho)
    (r384 : Seg13.relationRow384 rho)
    (r385 : Seg13.relationRow385 rho)
    (r386 : Seg13.relationRow386 rho)
    (r387 : Seg13.relationRow387 rho)
    (tail : next (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg18 (rho 7549) (rho 7554) (rho 7559) (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589) next := by
  exact ⟨rho 7590, rho 7591, rho 7592, rho 7593, rho 7594, r383, r384, r385, r386, r387, tail⟩

theorem seg13_scp_node0_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r388 : Seg13.relationRow388 rho)
    (r389 : Seg13.relationRow389 rho)
    (r390 : Seg13.relationRow390 rho)
    (r391 : Seg13.relationRow391 rho)
    (r392 : Seg13.relationRow392 rho)
    (tail : next (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg19 (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) next := by
  exact ⟨rho 7595, rho 7596, rho 7597, rho 7598, rho 7599, r388, r389, r390, r391, r392, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

