import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node16_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6117 : Seg28.relationRow6117 rho)
    (r6118 : Seg28.relationRow6118 rho)
    (r6119 : Seg28.relationRow6119 rho)
    (r6120 : Seg28.relationRow6120 rho)
    (r6121 : Seg28.relationRow6121 rho)
    (tail : next (rho 137) (rho 138) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446) (rho 25451)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg0 (rho 136) (rho 137) (rho 138) (rho 25441) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446) next := by
  exact ⟨rho 25447, rho 25448, rho 25449, rho 25450, rho 25451, r6117, r6118, r6119, r6120, r6121, tail⟩

theorem seg28_scp_node16_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6122 : Seg28.relationRow6122 rho)
    (r6123 : Seg28.relationRow6123 rho)
    (r6124 : Seg28.relationRow6124 rho)
    (r6125 : Seg28.relationRow6125 rho)
    (r6126 : Seg28.relationRow6126 rho)
    (tail : next (rho 137) (rho 138) (rho 25444) (rho 25445) (rho 25446) (rho 25451) (rho 25456)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg1 (rho 137) (rho 138) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446) (rho 25451) next := by
  exact ⟨rho 25452, rho 25453, rho 25454, rho 25455, rho 25456, r6122, r6123, r6124, r6125, r6126, tail⟩

theorem seg28_scp_node16_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6127 : Seg28.relationRow6127 rho)
    (r6128 : Seg28.relationRow6128 rho)
    (r6129 : Seg28.relationRow6129 rho)
    (r6130 : Seg28.relationRow6130 rho)
    (r6131 : Seg28.relationRow6131 rho)
    (tail : next (rho 138) (rho 25446) (rho 25451) (rho 25456) (rho 25461)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg2 (rho 137) (rho 138) (rho 25444) (rho 25445) (rho 25446) (rho 25451) (rho 25456) next := by
  exact ⟨rho 25457, rho 25458, rho 25459, rho 25460, rho 25461, r6127, r6128, r6129, r6130, r6131, tail⟩

theorem seg28_scp_node16_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6132 : Seg28.relationRow6132 rho)
    (r6133 : Seg28.relationRow6133 rho)
    (r6134 : Seg28.relationRow6134 rho)
    (r6135 : Seg28.relationRow6135 rho)
    (r6136 : Seg28.relationRow6136 rho)
    (tail : next (rho 25451) (rho 25456) (rho 25461) (rho 25466)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg3 (rho 138) (rho 25446) (rho 25451) (rho 25456) (rho 25461) next := by
  exact ⟨rho 25462, rho 25463, rho 25464, rho 25465, rho 25466, r6132, r6133, r6134, r6135, r6136, tail⟩

theorem seg28_scp_node16_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6137 : Seg28.relationRow6137 rho)
    (r6138 : Seg28.relationRow6138 rho)
    (r6139 : Seg28.relationRow6139 rho)
    (r6140 : Seg28.relationRow6140 rho)
    (r6141 : Seg28.relationRow6141 rho)
    (tail : next (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg4 (rho 25451) (rho 25456) (rho 25461) (rho 25466) next := by
  exact ⟨rho 25467, rho 25468, rho 25469, rho 25470, rho 25471, r6137, r6138, r6139, r6140, r6141, tail⟩

theorem seg28_scp_node16_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6142 : Seg28.relationRow6142 rho)
    (r6143 : Seg28.relationRow6143 rho)
    (r6144 : Seg28.relationRow6144 rho)
    (r6145 : Seg28.relationRow6145 rho)
    (r6146 : Seg28.relationRow6146 rho)
    (tail : next (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) (rho 25476)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg5 (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) next := by
  exact ⟨rho 25472, rho 25473, rho 25474, rho 25475, rho 25476, r6142, r6143, r6144, r6145, r6146, tail⟩

theorem seg28_scp_node16_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6147 : Seg28.relationRow6147 rho)
    (r6148 : Seg28.relationRow6148 rho)
    (r6149 : Seg28.relationRow6149 rho)
    (r6150 : Seg28.relationRow6150 rho)
    (r6151 : Seg28.relationRow6151 rho)
    (tail : next (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) (rho 25476) (rho 25481)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg6 (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) (rho 25476) next := by
  exact ⟨rho 25477, rho 25478, rho 25479, rho 25480, rho 25481, r6147, r6148, r6149, r6150, r6151, tail⟩

theorem seg28_scp_node16_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6152 : Seg28.relationRow6152 rho)
    (r6153 : Seg28.relationRow6153 rho)
    (r6154 : Seg28.relationRow6154 rho)
    (r6155 : Seg28.relationRow6155 rho)
    (r6156 : Seg28.relationRow6156 rho)
    (tail : next (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) (rho 25476) (rho 25481) (rho 25486)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg7 (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) (rho 25476) (rho 25481) next := by
  exact ⟨rho 25482, rho 25483, rho 25484, rho 25485, rho 25486, r6152, r6153, r6154, r6155, r6156, tail⟩

theorem seg28_scp_node16_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6157 : Seg28.relationRow6157 rho)
    (r6158 : Seg28.relationRow6158 rho)
    (r6159 : Seg28.relationRow6159 rho)
    (r6160 : Seg28.relationRow6160 rho)
    (r6161 : Seg28.relationRow6161 rho)
    (tail : next (rho 25471) (rho 25476) (rho 25481) (rho 25486) (rho 25491)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg8 (rho 25451) (rho 25456) (rho 25461) (rho 25466) (rho 25471) (rho 25476) (rho 25481) (rho 25486) next := by
  exact ⟨rho 25487, rho 25488, rho 25489, rho 25490, rho 25491, r6157, r6158, r6159, r6160, r6161, tail⟩

theorem seg28_scp_node16_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6162 : Seg28.relationRow6162 rho)
    (r6163 : Seg28.relationRow6163 rho)
    (r6164 : Seg28.relationRow6164 rho)
    (r6165 : Seg28.relationRow6165 rho)
    (r6166 : Seg28.relationRow6166 rho)
    (tail : next (rho 25471) (rho 25476) (rho 25481) (rho 25486) (rho 25491) (rho 25496)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg9 (rho 25471) (rho 25476) (rho 25481) (rho 25486) (rho 25491) next := by
  exact ⟨rho 25492, rho 25493, rho 25494, rho 25495, rho 25496, r6162, r6163, r6164, r6165, r6166, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

