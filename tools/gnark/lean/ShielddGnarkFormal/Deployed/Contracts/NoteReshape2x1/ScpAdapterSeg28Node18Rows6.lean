import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node18_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7145 : Seg28.relationRow7145 rho)
    (r7146 : Seg28.relationRow7146 rho)
    (r7147 : Seg28.relationRow7147 rho)
    (r7148 : Seg28.relationRow7148 rho)
    (r7149 : Seg28.relationRow7149 rho)
    (tail : next (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg60 (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) next := by
  exact ⟨rho 26461, rho 26462, rho 26463, rho 26464, rho 26465, r7145, r7146, r7147, r7148, r7149, tail⟩

theorem seg28_scp_node18_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7150 : Seg28.relationRow7150 rho)
    (r7151 : Seg28.relationRow7151 rho)
    (r7152 : Seg28.relationRow7152 rho)
    (r7153 : Seg28.relationRow7153 rho)
    (r7154 : Seg28.relationRow7154 rho)
    (tail : next (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) (rho 26470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg61 (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) next := by
  exact ⟨rho 26466, rho 26467, rho 26468, rho 26469, rho 26470, r7150, r7151, r7152, r7153, r7154, tail⟩

theorem seg28_scp_node18_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7155 : Seg28.relationRow7155 rho)
    (r7156 : Seg28.relationRow7156 rho)
    (r7157 : Seg28.relationRow7157 rho)
    (r7158 : Seg28.relationRow7158 rho)
    (r7159 : Seg28.relationRow7159 rho)
    (tail : next (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) (rho 26470) (rho 26475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg62 (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) (rho 26470) next := by
  exact ⟨rho 26471, rho 26472, rho 26473, rho 26474, rho 26475, r7155, r7156, r7157, r7158, r7159, tail⟩

theorem seg28_scp_node18_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7160 : Seg28.relationRow7160 rho)
    (r7161 : Seg28.relationRow7161 rho)
    (r7162 : Seg28.relationRow7162 rho)
    (r7163 : Seg28.relationRow7163 rho)
    (r7164 : Seg28.relationRow7164 rho)
    (tail : next (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) (rho 26470) (rho 26475) (rho 26480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg63 (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) (rho 26470) (rho 26475) next := by
  exact ⟨rho 26476, rho 26477, rho 26478, rho 26479, rho 26480, r7160, r7161, r7162, r7163, r7164, tail⟩

theorem seg28_scp_node18_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7165 : Seg28.relationRow7165 rho)
    (r7166 : Seg28.relationRow7166 rho)
    (r7167 : Seg28.relationRow7167 rho)
    (r7168 : Seg28.relationRow7168 rho)
    (r7169 : Seg28.relationRow7169 rho)
    (tail : next (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg64 (rho 26440) (rho 26445) (rho 26450) (rho 26455) (rho 26460) (rho 26465) (rho 26470) (rho 26475) (rho 26480) next := by
  exact ⟨rho 26481, rho 26482, rho 26483, rho 26484, rho 26485, r7165, r7166, r7167, r7168, r7169, tail⟩

theorem seg28_scp_node18_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7170 : Seg28.relationRow7170 rho)
    (r7171 : Seg28.relationRow7171 rho)
    (r7172 : Seg28.relationRow7172 rho)
    (r7173 : Seg28.relationRow7173 rho)
    (r7174 : Seg28.relationRow7174 rho)
    (tail : next (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg65 (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) next := by
  exact ⟨rho 26486, rho 26487, rho 26488, rho 26489, rho 26490, r7170, r7171, r7172, r7173, r7174, tail⟩

theorem seg28_scp_node18_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7175 : Seg28.relationRow7175 rho)
    (r7176 : Seg28.relationRow7176 rho)
    (r7177 : Seg28.relationRow7177 rho)
    (r7178 : Seg28.relationRow7178 rho)
    (r7179 : Seg28.relationRow7179 rho)
    (tail : next (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) (rho 26495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg66 (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) next := by
  exact ⟨rho 26491, rho 26492, rho 26493, rho 26494, rho 26495, r7175, r7176, r7177, r7178, r7179, tail⟩

theorem seg28_scp_node18_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7180 : Seg28.relationRow7180 rho)
    (r7181 : Seg28.relationRow7181 rho)
    (r7182 : Seg28.relationRow7182 rho)
    (r7183 : Seg28.relationRow7183 rho)
    (r7184 : Seg28.relationRow7184 rho)
    (tail : next (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) (rho 26495) (rho 26500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg67 (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) (rho 26495) next := by
  exact ⟨rho 26496, rho 26497, rho 26498, rho 26499, rho 26500, r7180, r7181, r7182, r7183, r7184, tail⟩

theorem seg28_scp_node18_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7185 : Seg28.relationRow7185 rho)
    (r7186 : Seg28.relationRow7186 rho)
    (r7187 : Seg28.relationRow7187 rho)
    (r7188 : Seg28.relationRow7188 rho)
    (r7189 : Seg28.relationRow7189 rho)
    (tail : next (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) (rho 26495) (rho 26500) (rho 26505)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg68 (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) (rho 26495) (rho 26500) next := by
  exact ⟨rho 26501, rho 26502, rho 26503, rho 26504, rho 26505, r7185, r7186, r7187, r7188, r7189, tail⟩

theorem seg28_scp_node18_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7190 : Seg28.relationRow7190 rho)
    (r7191 : Seg28.relationRow7191 rho)
    (r7192 : Seg28.relationRow7192 rho)
    (r7193 : Seg28.relationRow7193 rho)
    (r7194 : Seg28.relationRow7194 rho)
    (tail : next (rho 26490) (rho 26495) (rho 26500) (rho 26505) (rho 26510)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg69 (rho 26465) (rho 26470) (rho 26475) (rho 26480) (rho 26485) (rho 26490) (rho 26495) (rho 26500) (rho 26505) next := by
  exact ⟨rho 26506, rho 26507, rho 26508, rho 26509, rho 26510, r7190, r7191, r7192, r7193, r7194, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

