import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node0_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r343 : Seg28.relationRow343 rho)
    (r344 : Seg28.relationRow344 rho)
    (r345 : Seg28.relationRow345 rho)
    (r346 : Seg28.relationRow346 rho)
    (r347 : Seg28.relationRow347 rho)
    (tail : next (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) (rho 19741)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg10 (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) next := by
  exact ⟨rho 19737, rho 19738, rho 19739, rho 19740, rho 19741, r343, r344, r345, r346, r347, tail⟩

theorem seg28_scp_node0_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r348 : Seg28.relationRow348 rho)
    (r349 : Seg28.relationRow349 rho)
    (r350 : Seg28.relationRow350 rho)
    (r351 : Seg28.relationRow351 rho)
    (r352 : Seg28.relationRow352 rho)
    (tail : next (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) (rho 19741) (rho 19746)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg11 (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) (rho 19741) next := by
  exact ⟨rho 19742, rho 19743, rho 19744, rho 19745, rho 19746, r348, r349, r350, r351, r352, tail⟩

theorem seg28_scp_node0_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r353 : Seg28.relationRow353 rho)
    (r354 : Seg28.relationRow354 rho)
    (r355 : Seg28.relationRow355 rho)
    (r356 : Seg28.relationRow356 rho)
    (r357 : Seg28.relationRow357 rho)
    (tail : next (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) (rho 19741) (rho 19746) (rho 19751)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg12 (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) (rho 19741) (rho 19746) next := by
  exact ⟨rho 19747, rho 19748, rho 19749, rho 19750, rho 19751, r353, r354, r355, r356, r357, tail⟩

theorem seg28_scp_node0_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r358 : Seg28.relationRow358 rho)
    (r359 : Seg28.relationRow359 rho)
    (r360 : Seg28.relationRow360 rho)
    (r361 : Seg28.relationRow361 rho)
    (r362 : Seg28.relationRow362 rho)
    (tail : next (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg13 (rho 19711) (rho 19716) (rho 19721) (rho 19726) (rho 19731) (rho 19736) (rho 19741) (rho 19746) (rho 19751) next := by
  exact ⟨rho 19752, rho 19753, rho 19754, rho 19755, rho 19756, r358, r359, r360, r361, r362, tail⟩

theorem seg28_scp_node0_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r363 : Seg28.relationRow363 rho)
    (r364 : Seg28.relationRow364 rho)
    (r365 : Seg28.relationRow365 rho)
    (r366 : Seg28.relationRow366 rho)
    (r367 : Seg28.relationRow367 rho)
    (tail : next (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg14 (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) next := by
  exact ⟨rho 19757, rho 19758, rho 19759, rho 19760, rho 19761, r363, r364, r365, r366, r367, tail⟩

theorem seg28_scp_node0_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r368 : Seg28.relationRow368 rho)
    (r369 : Seg28.relationRow369 rho)
    (r370 : Seg28.relationRow370 rho)
    (r371 : Seg28.relationRow371 rho)
    (r372 : Seg28.relationRow372 rho)
    (tail : next (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) (rho 19766)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg15 (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) next := by
  exact ⟨rho 19762, rho 19763, rho 19764, rho 19765, rho 19766, r368, r369, r370, r371, r372, tail⟩

theorem seg28_scp_node0_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r373 : Seg28.relationRow373 rho)
    (r374 : Seg28.relationRow374 rho)
    (r375 : Seg28.relationRow375 rho)
    (r376 : Seg28.relationRow376 rho)
    (r377 : Seg28.relationRow377 rho)
    (tail : next (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) (rho 19766) (rho 19771)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg16 (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) (rho 19766) next := by
  exact ⟨rho 19767, rho 19768, rho 19769, rho 19770, rho 19771, r373, r374, r375, r376, r377, tail⟩

theorem seg28_scp_node0_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r378 : Seg28.relationRow378 rho)
    (r379 : Seg28.relationRow379 rho)
    (r380 : Seg28.relationRow380 rho)
    (r381 : Seg28.relationRow381 rho)
    (r382 : Seg28.relationRow382 rho)
    (tail : next (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) (rho 19766) (rho 19771) (rho 19776)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg17 (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) (rho 19766) (rho 19771) next := by
  exact ⟨rho 19772, rho 19773, rho 19774, rho 19775, rho 19776, r378, r379, r380, r381, r382, tail⟩

theorem seg28_scp_node0_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r383 : Seg28.relationRow383 rho)
    (r384 : Seg28.relationRow384 rho)
    (r385 : Seg28.relationRow385 rho)
    (r386 : Seg28.relationRow386 rho)
    (r387 : Seg28.relationRow387 rho)
    (tail : next (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg18 (rho 19736) (rho 19741) (rho 19746) (rho 19751) (rho 19756) (rho 19761) (rho 19766) (rho 19771) (rho 19776) next := by
  exact ⟨rho 19777, rho 19778, rho 19779, rho 19780, rho 19781, r383, r384, r385, r386, r387, tail⟩

theorem seg28_scp_node0_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r388 : Seg28.relationRow388 rho)
    (r389 : Seg28.relationRow389 rho)
    (r390 : Seg28.relationRow390 rho)
    (r391 : Seg28.relationRow391 rho)
    (r392 : Seg28.relationRow392 rho)
    (tail : next (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg19 (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) next := by
  exact ⟨rho 19782, rho 19783, rho 19784, rho 19785, rho 19786, r388, r389, r390, r391, r392, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

