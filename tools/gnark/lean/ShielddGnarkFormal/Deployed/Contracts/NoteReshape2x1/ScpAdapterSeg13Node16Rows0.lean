import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node16_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6117 : Seg13.relationRow6117 rho)
    (r6118 : Seg13.relationRow6118 rho)
    (r6119 : Seg13.relationRow6119 rho)
    (r6120 : Seg13.relationRow6120 rho)
    (r6121 : Seg13.relationRow6121 rho)
    (tail : next (rho 47) (rho 48) (rho 13255) (rho 13256) (rho 13257) (rho 13258) (rho 13259) (rho 13264)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg0 (rho 46) (rho 47) (rho 48) (rho 13254) (rho 13255) (rho 13256) (rho 13257) (rho 13258) (rho 13259) next := by
  exact ⟨rho 13260, rho 13261, rho 13262, rho 13263, rho 13264, r6117, r6118, r6119, r6120, r6121, tail⟩

theorem seg13_scp_node16_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6122 : Seg13.relationRow6122 rho)
    (r6123 : Seg13.relationRow6123 rho)
    (r6124 : Seg13.relationRow6124 rho)
    (r6125 : Seg13.relationRow6125 rho)
    (r6126 : Seg13.relationRow6126 rho)
    (tail : next (rho 47) (rho 48) (rho 13257) (rho 13258) (rho 13259) (rho 13264) (rho 13269)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg1 (rho 47) (rho 48) (rho 13255) (rho 13256) (rho 13257) (rho 13258) (rho 13259) (rho 13264) next := by
  exact ⟨rho 13265, rho 13266, rho 13267, rho 13268, rho 13269, r6122, r6123, r6124, r6125, r6126, tail⟩

theorem seg13_scp_node16_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6127 : Seg13.relationRow6127 rho)
    (r6128 : Seg13.relationRow6128 rho)
    (r6129 : Seg13.relationRow6129 rho)
    (r6130 : Seg13.relationRow6130 rho)
    (r6131 : Seg13.relationRow6131 rho)
    (tail : next (rho 48) (rho 13259) (rho 13264) (rho 13269) (rho 13274)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg2 (rho 47) (rho 48) (rho 13257) (rho 13258) (rho 13259) (rho 13264) (rho 13269) next := by
  exact ⟨rho 13270, rho 13271, rho 13272, rho 13273, rho 13274, r6127, r6128, r6129, r6130, r6131, tail⟩

theorem seg13_scp_node16_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6132 : Seg13.relationRow6132 rho)
    (r6133 : Seg13.relationRow6133 rho)
    (r6134 : Seg13.relationRow6134 rho)
    (r6135 : Seg13.relationRow6135 rho)
    (r6136 : Seg13.relationRow6136 rho)
    (tail : next (rho 13264) (rho 13269) (rho 13274) (rho 13279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg3 (rho 48) (rho 13259) (rho 13264) (rho 13269) (rho 13274) next := by
  exact ⟨rho 13275, rho 13276, rho 13277, rho 13278, rho 13279, r6132, r6133, r6134, r6135, r6136, tail⟩

theorem seg13_scp_node16_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6137 : Seg13.relationRow6137 rho)
    (r6138 : Seg13.relationRow6138 rho)
    (r6139 : Seg13.relationRow6139 rho)
    (r6140 : Seg13.relationRow6140 rho)
    (r6141 : Seg13.relationRow6141 rho)
    (tail : next (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg4 (rho 13264) (rho 13269) (rho 13274) (rho 13279) next := by
  exact ⟨rho 13280, rho 13281, rho 13282, rho 13283, rho 13284, r6137, r6138, r6139, r6140, r6141, tail⟩

theorem seg13_scp_node16_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6142 : Seg13.relationRow6142 rho)
    (r6143 : Seg13.relationRow6143 rho)
    (r6144 : Seg13.relationRow6144 rho)
    (r6145 : Seg13.relationRow6145 rho)
    (r6146 : Seg13.relationRow6146 rho)
    (tail : next (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) (rho 13289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg5 (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) next := by
  exact ⟨rho 13285, rho 13286, rho 13287, rho 13288, rho 13289, r6142, r6143, r6144, r6145, r6146, tail⟩

theorem seg13_scp_node16_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6147 : Seg13.relationRow6147 rho)
    (r6148 : Seg13.relationRow6148 rho)
    (r6149 : Seg13.relationRow6149 rho)
    (r6150 : Seg13.relationRow6150 rho)
    (r6151 : Seg13.relationRow6151 rho)
    (tail : next (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) (rho 13289) (rho 13294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg6 (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) (rho 13289) next := by
  exact ⟨rho 13290, rho 13291, rho 13292, rho 13293, rho 13294, r6147, r6148, r6149, r6150, r6151, tail⟩

theorem seg13_scp_node16_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6152 : Seg13.relationRow6152 rho)
    (r6153 : Seg13.relationRow6153 rho)
    (r6154 : Seg13.relationRow6154 rho)
    (r6155 : Seg13.relationRow6155 rho)
    (r6156 : Seg13.relationRow6156 rho)
    (tail : next (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) (rho 13289) (rho 13294) (rho 13299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg7 (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) (rho 13289) (rho 13294) next := by
  exact ⟨rho 13295, rho 13296, rho 13297, rho 13298, rho 13299, r6152, r6153, r6154, r6155, r6156, tail⟩

theorem seg13_scp_node16_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6157 : Seg13.relationRow6157 rho)
    (r6158 : Seg13.relationRow6158 rho)
    (r6159 : Seg13.relationRow6159 rho)
    (r6160 : Seg13.relationRow6160 rho)
    (r6161 : Seg13.relationRow6161 rho)
    (tail : next (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg8 (rho 13264) (rho 13269) (rho 13274) (rho 13279) (rho 13284) (rho 13289) (rho 13294) (rho 13299) next := by
  exact ⟨rho 13300, rho 13301, rho 13302, rho 13303, rho 13304, r6157, r6158, r6159, r6160, r6161, tail⟩

theorem seg13_scp_node16_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6162 : Seg13.relationRow6162 rho)
    (r6163 : Seg13.relationRow6163 rho)
    (r6164 : Seg13.relationRow6164 rho)
    (r6165 : Seg13.relationRow6165 rho)
    (r6166 : Seg13.relationRow6166 rho)
    (tail : next (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg9 (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) next := by
  exact ⟨rho 13305, rho 13306, rho 13307, rho 13308, rho 13309, r6162, r6163, r6164, r6165, r6166, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

