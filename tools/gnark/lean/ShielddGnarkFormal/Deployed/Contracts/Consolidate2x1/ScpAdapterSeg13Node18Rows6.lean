import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node18_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7145 : Seg13.relationRow7145 rho)
    (r7146 : Seg13.relationRow7146 rho)
    (r7147 : Seg13.relationRow7147 rho)
    (r7148 : Seg13.relationRow7148 rho)
    (r7149 : Seg13.relationRow7149 rho)
    (tail : next (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg60 (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) next := by
  exact ⟨rho 14286, rho 14287, rho 14288, rho 14289, rho 14290, r7145, r7146, r7147, r7148, r7149, tail⟩

theorem seg13_scp_node18_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7150 : Seg13.relationRow7150 rho)
    (r7151 : Seg13.relationRow7151 rho)
    (r7152 : Seg13.relationRow7152 rho)
    (r7153 : Seg13.relationRow7153 rho)
    (r7154 : Seg13.relationRow7154 rho)
    (tail : next (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) (rho 14295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg61 (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) next := by
  exact ⟨rho 14291, rho 14292, rho 14293, rho 14294, rho 14295, r7150, r7151, r7152, r7153, r7154, tail⟩

theorem seg13_scp_node18_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7155 : Seg13.relationRow7155 rho)
    (r7156 : Seg13.relationRow7156 rho)
    (r7157 : Seg13.relationRow7157 rho)
    (r7158 : Seg13.relationRow7158 rho)
    (r7159 : Seg13.relationRow7159 rho)
    (tail : next (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) (rho 14295) (rho 14300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg62 (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) (rho 14295) next := by
  exact ⟨rho 14296, rho 14297, rho 14298, rho 14299, rho 14300, r7155, r7156, r7157, r7158, r7159, tail⟩

theorem seg13_scp_node18_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7160 : Seg13.relationRow7160 rho)
    (r7161 : Seg13.relationRow7161 rho)
    (r7162 : Seg13.relationRow7162 rho)
    (r7163 : Seg13.relationRow7163 rho)
    (r7164 : Seg13.relationRow7164 rho)
    (tail : next (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) (rho 14295) (rho 14300) (rho 14305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg63 (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) (rho 14295) (rho 14300) next := by
  exact ⟨rho 14301, rho 14302, rho 14303, rho 14304, rho 14305, r7160, r7161, r7162, r7163, r7164, tail⟩

theorem seg13_scp_node18_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7165 : Seg13.relationRow7165 rho)
    (r7166 : Seg13.relationRow7166 rho)
    (r7167 : Seg13.relationRow7167 rho)
    (r7168 : Seg13.relationRow7168 rho)
    (r7169 : Seg13.relationRow7169 rho)
    (tail : next (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg64 (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285) (rho 14290) (rho 14295) (rho 14300) (rho 14305) next := by
  exact ⟨rho 14306, rho 14307, rho 14308, rho 14309, rho 14310, r7165, r7166, r7167, r7168, r7169, tail⟩

theorem seg13_scp_node18_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7170 : Seg13.relationRow7170 rho)
    (r7171 : Seg13.relationRow7171 rho)
    (r7172 : Seg13.relationRow7172 rho)
    (r7173 : Seg13.relationRow7173 rho)
    (r7174 : Seg13.relationRow7174 rho)
    (tail : next (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg65 (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) next := by
  exact ⟨rho 14311, rho 14312, rho 14313, rho 14314, rho 14315, r7170, r7171, r7172, r7173, r7174, tail⟩

theorem seg13_scp_node18_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7175 : Seg13.relationRow7175 rho)
    (r7176 : Seg13.relationRow7176 rho)
    (r7177 : Seg13.relationRow7177 rho)
    (r7178 : Seg13.relationRow7178 rho)
    (r7179 : Seg13.relationRow7179 rho)
    (tail : next (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) (rho 14320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg66 (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) next := by
  exact ⟨rho 14316, rho 14317, rho 14318, rho 14319, rho 14320, r7175, r7176, r7177, r7178, r7179, tail⟩

theorem seg13_scp_node18_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7180 : Seg13.relationRow7180 rho)
    (r7181 : Seg13.relationRow7181 rho)
    (r7182 : Seg13.relationRow7182 rho)
    (r7183 : Seg13.relationRow7183 rho)
    (r7184 : Seg13.relationRow7184 rho)
    (tail : next (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) (rho 14320) (rho 14325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg67 (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) (rho 14320) next := by
  exact ⟨rho 14321, rho 14322, rho 14323, rho 14324, rho 14325, r7180, r7181, r7182, r7183, r7184, tail⟩

theorem seg13_scp_node18_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7185 : Seg13.relationRow7185 rho)
    (r7186 : Seg13.relationRow7186 rho)
    (r7187 : Seg13.relationRow7187 rho)
    (r7188 : Seg13.relationRow7188 rho)
    (r7189 : Seg13.relationRow7189 rho)
    (tail : next (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) (rho 14320) (rho 14325) (rho 14330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg68 (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) (rho 14320) (rho 14325) next := by
  exact ⟨rho 14326, rho 14327, rho 14328, rho 14329, rho 14330, r7185, r7186, r7187, r7188, r7189, tail⟩

theorem seg13_scp_node18_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7190 : Seg13.relationRow7190 rho)
    (r7191 : Seg13.relationRow7191 rho)
    (r7192 : Seg13.relationRow7192 rho)
    (r7193 : Seg13.relationRow7193 rho)
    (r7194 : Seg13.relationRow7194 rho)
    (tail : next (rho 14315) (rho 14320) (rho 14325) (rho 14330) (rho 14335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg69 (rho 14290) (rho 14295) (rho 14300) (rho 14305) (rho 14310) (rho 14315) (rho 14320) (rho 14325) (rho 14330) next := by
  exact ⟨rho 14331, rho 14332, rho 14333, rho 14334, rho 14335, r7190, r7191, r7192, r7193, r7194, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

