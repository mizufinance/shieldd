import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node0_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r293 : Seg13.relationRow293 rho)
    (r294 : Seg13.relationRow294 rho)
    (r295 : Seg13.relationRow295 rho)
    (r296 : Seg13.relationRow296 rho)
    (r297 : Seg13.relationRow297 rho)
    (tail : next (rho 95) (rho 96) (rho 7501) (rho 7502) (rho 7503) (rho 7504) (rho 7505) (rho 7510)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg0 (rho 94) (rho 95) (rho 96) (rho 7500) (rho 7501) (rho 7502) (rho 7503) (rho 7504) (rho 7505) next := by
  exact ⟨rho 7506, rho 7507, rho 7508, rho 7509, rho 7510, r293, r294, r295, r296, r297, tail⟩

theorem seg13_scp_node0_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r298 : Seg13.relationRow298 rho)
    (r299 : Seg13.relationRow299 rho)
    (r300 : Seg13.relationRow300 rho)
    (r301 : Seg13.relationRow301 rho)
    (r302 : Seg13.relationRow302 rho)
    (tail : next (rho 95) (rho 96) (rho 7503) (rho 7504) (rho 7505) (rho 7510) (rho 7515)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg1 (rho 95) (rho 96) (rho 7501) (rho 7502) (rho 7503) (rho 7504) (rho 7505) (rho 7510) next := by
  exact ⟨rho 7511, rho 7512, rho 7513, rho 7514, rho 7515, r298, r299, r300, r301, r302, tail⟩

theorem seg13_scp_node0_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r303 : Seg13.relationRow303 rho)
    (r304 : Seg13.relationRow304 rho)
    (r305 : Seg13.relationRow305 rho)
    (r306 : Seg13.relationRow306 rho)
    (r307 : Seg13.relationRow307 rho)
    (tail : next (rho 96) (rho 7505) (rho 7510) (rho 7515) (rho 7520)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg2 (rho 95) (rho 96) (rho 7503) (rho 7504) (rho 7505) (rho 7510) (rho 7515) next := by
  exact ⟨rho 7516, rho 7517, rho 7518, rho 7519, rho 7520, r303, r304, r305, r306, r307, tail⟩

theorem seg13_scp_node0_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r308 : Seg13.relationRow308 rho)
    (r309 : Seg13.relationRow309 rho)
    (r310 : Seg13.relationRow310 rho)
    (r311 : Seg13.relationRow311 rho)
    (r312 : Seg13.relationRow312 rho)
    (tail : next (rho 7510) (rho 7515) (rho 7520) (rho 7525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg3 (rho 96) (rho 7505) (rho 7510) (rho 7515) (rho 7520) next := by
  exact ⟨rho 7521, rho 7522, rho 7523, rho 7524, rho 7525, r308, r309, r310, r311, r312, tail⟩

theorem seg13_scp_node0_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r313 : Seg13.relationRow313 rho)
    (r314 : Seg13.relationRow314 rho)
    (r315 : Seg13.relationRow315 rho)
    (r316 : Seg13.relationRow316 rho)
    (r317 : Seg13.relationRow317 rho)
    (tail : next (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg4 (rho 7510) (rho 7515) (rho 7520) (rho 7525) next := by
  exact ⟨rho 7526, rho 7527, rho 7528, rho 7529, rho 7530, r313, r314, r315, r316, r317, tail⟩

theorem seg13_scp_node0_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r318 : Seg13.relationRow318 rho)
    (r319 : Seg13.relationRow319 rho)
    (r320 : Seg13.relationRow320 rho)
    (r321 : Seg13.relationRow321 rho)
    (r322 : Seg13.relationRow322 rho)
    (tail : next (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) (rho 7535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg5 (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) next := by
  exact ⟨rho 7531, rho 7532, rho 7533, rho 7534, rho 7535, r318, r319, r320, r321, r322, tail⟩

theorem seg13_scp_node0_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r323 : Seg13.relationRow323 rho)
    (r324 : Seg13.relationRow324 rho)
    (r325 : Seg13.relationRow325 rho)
    (r326 : Seg13.relationRow326 rho)
    (r327 : Seg13.relationRow327 rho)
    (tail : next (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) (rho 7535) (rho 7540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg6 (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) (rho 7535) next := by
  exact ⟨rho 7536, rho 7537, rho 7538, rho 7539, rho 7540, r323, r324, r325, r326, r327, tail⟩

theorem seg13_scp_node0_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r328 : Seg13.relationRow328 rho)
    (r329 : Seg13.relationRow329 rho)
    (r330 : Seg13.relationRow330 rho)
    (r331 : Seg13.relationRow331 rho)
    (r332 : Seg13.relationRow332 rho)
    (tail : next (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) (rho 7535) (rho 7540) (rho 7545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg7 (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) (rho 7535) (rho 7540) next := by
  exact ⟨rho 7541, rho 7542, rho 7543, rho 7544, rho 7545, r328, r329, r330, r331, r332, tail⟩

theorem seg13_scp_node0_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r333 : Seg13.relationRow333 rho)
    (r334 : Seg13.relationRow334 rho)
    (r335 : Seg13.relationRow335 rho)
    (r336 : Seg13.relationRow336 rho)
    (r337 : Seg13.relationRow337 rho)
    (tail : next (rho 7530) (rho 7535) (rho 7540) (rho 7545) (rho 7550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg8 (rho 7510) (rho 7515) (rho 7520) (rho 7525) (rho 7530) (rho 7535) (rho 7540) (rho 7545) next := by
  exact ⟨rho 7546, rho 7547, rho 7548, rho 7549, rho 7550, r333, r334, r335, r336, r337, tail⟩

theorem seg13_scp_node0_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r338 : Seg13.relationRow338 rho)
    (r339 : Seg13.relationRow339 rho)
    (r340 : Seg13.relationRow340 rho)
    (r341 : Seg13.relationRow341 rho)
    (r342 : Seg13.relationRow342 rho)
    (tail : next (rho 7530) (rho 7535) (rho 7540) (rho 7545) (rho 7550) (rho 7555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg9 (rho 7530) (rho 7535) (rho 7540) (rho 7545) (rho 7550) next := by
  exact ⟨rho 7551, rho 7552, rho 7553, rho 7554, rho 7555, r338, r339, r340, r341, r342, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

