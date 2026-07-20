import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node11_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4347 : Seg13.relationRow4347 rho)
    (r4348 : Seg13.relationRow4348 rho)
    (r4349 : Seg13.relationRow4349 rho)
    (r4350 : Seg13.relationRow4350 rho)
    (r4351 : Seg13.relationRow4351 rho)
    (tail : next (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) (rho 11514)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg10 (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) next := by
  exact ⟨rho 11510, rho 11511, rho 11512, rho 11513, rho 11514, r4347, r4348, r4349, r4350, r4351, tail⟩

theorem seg13_scp_node11_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4352 : Seg13.relationRow4352 rho)
    (r4353 : Seg13.relationRow4353 rho)
    (r4354 : Seg13.relationRow4354 rho)
    (r4355 : Seg13.relationRow4355 rho)
    (r4356 : Seg13.relationRow4356 rho)
    (tail : next (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) (rho 11514) (rho 11519)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg11 (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) (rho 11514) next := by
  exact ⟨rho 11515, rho 11516, rho 11517, rho 11518, rho 11519, r4352, r4353, r4354, r4355, r4356, tail⟩

theorem seg13_scp_node11_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4357 : Seg13.relationRow4357 rho)
    (r4358 : Seg13.relationRow4358 rho)
    (r4359 : Seg13.relationRow4359 rho)
    (r4360 : Seg13.relationRow4360 rho)
    (r4361 : Seg13.relationRow4361 rho)
    (tail : next (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) (rho 11514) (rho 11519) (rho 11524)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg12 (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) (rho 11514) (rho 11519) next := by
  exact ⟨rho 11520, rho 11521, rho 11522, rho 11523, rho 11524, r4357, r4358, r4359, r4360, r4361, tail⟩

theorem seg13_scp_node11_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4362 : Seg13.relationRow4362 rho)
    (r4363 : Seg13.relationRow4363 rho)
    (r4364 : Seg13.relationRow4364 rho)
    (r4365 : Seg13.relationRow4365 rho)
    (r4366 : Seg13.relationRow4366 rho)
    (tail : next (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg13 (rho 11484) (rho 11489) (rho 11494) (rho 11499) (rho 11504) (rho 11509) (rho 11514) (rho 11519) (rho 11524) next := by
  exact ⟨rho 11525, rho 11526, rho 11527, rho 11528, rho 11529, r4362, r4363, r4364, r4365, r4366, tail⟩

theorem seg13_scp_node11_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4367 : Seg13.relationRow4367 rho)
    (r4368 : Seg13.relationRow4368 rho)
    (r4369 : Seg13.relationRow4369 rho)
    (r4370 : Seg13.relationRow4370 rho)
    (r4371 : Seg13.relationRow4371 rho)
    (tail : next (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg14 (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) next := by
  exact ⟨rho 11530, rho 11531, rho 11532, rho 11533, rho 11534, r4367, r4368, r4369, r4370, r4371, tail⟩

theorem seg13_scp_node11_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4372 : Seg13.relationRow4372 rho)
    (r4373 : Seg13.relationRow4373 rho)
    (r4374 : Seg13.relationRow4374 rho)
    (r4375 : Seg13.relationRow4375 rho)
    (r4376 : Seg13.relationRow4376 rho)
    (tail : next (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) (rho 11539)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg15 (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) next := by
  exact ⟨rho 11535, rho 11536, rho 11537, rho 11538, rho 11539, r4372, r4373, r4374, r4375, r4376, tail⟩

theorem seg13_scp_node11_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4377 : Seg13.relationRow4377 rho)
    (r4378 : Seg13.relationRow4378 rho)
    (r4379 : Seg13.relationRow4379 rho)
    (r4380 : Seg13.relationRow4380 rho)
    (r4381 : Seg13.relationRow4381 rho)
    (tail : next (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) (rho 11539) (rho 11544)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg16 (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) (rho 11539) next := by
  exact ⟨rho 11540, rho 11541, rho 11542, rho 11543, rho 11544, r4377, r4378, r4379, r4380, r4381, tail⟩

theorem seg13_scp_node11_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4382 : Seg13.relationRow4382 rho)
    (r4383 : Seg13.relationRow4383 rho)
    (r4384 : Seg13.relationRow4384 rho)
    (r4385 : Seg13.relationRow4385 rho)
    (r4386 : Seg13.relationRow4386 rho)
    (tail : next (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) (rho 11539) (rho 11544) (rho 11549)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg17 (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) (rho 11539) (rho 11544) next := by
  exact ⟨rho 11545, rho 11546, rho 11547, rho 11548, rho 11549, r4382, r4383, r4384, r4385, r4386, tail⟩

theorem seg13_scp_node11_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4387 : Seg13.relationRow4387 rho)
    (r4388 : Seg13.relationRow4388 rho)
    (r4389 : Seg13.relationRow4389 rho)
    (r4390 : Seg13.relationRow4390 rho)
    (r4391 : Seg13.relationRow4391 rho)
    (tail : next (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg18 (rho 11509) (rho 11514) (rho 11519) (rho 11524) (rho 11529) (rho 11534) (rho 11539) (rho 11544) (rho 11549) next := by
  exact ⟨rho 11550, rho 11551, rho 11552, rho 11553, rho 11554, r4387, r4388, r4389, r4390, r4391, tail⟩

theorem seg13_scp_node11_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4392 : Seg13.relationRow4392 rho)
    (r4393 : Seg13.relationRow4393 rho)
    (r4394 : Seg13.relationRow4394 rho)
    (r4395 : Seg13.relationRow4395 rho)
    (r4396 : Seg13.relationRow4396 rho)
    (tail : next (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg19 (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) next := by
  exact ⟨rho 11555, rho 11556, rho 11557, rho 11558, rho 11559, r4392, r4393, r4394, r4395, r4396, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

