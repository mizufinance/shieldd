import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node18_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7145 rho)
    (r7146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7146 rho)
    (r7147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7147 rho)
    (r7148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7148 rho)
    (r7149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7149 rho)
    (tail : next (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg60 (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) next := by
  exact ⟨rho 7134, rho 7135, rho 7136, rho 7137, rho 7138, r7145, r7146, r7147, r7148, r7149, tail⟩

theorem template_scp_node18_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7150 rho)
    (r7151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7151 rho)
    (r7152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7152 rho)
    (r7153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7153 rho)
    (r7154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7154 rho)
    (tail : next (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg61 (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) next := by
  exact ⟨rho 7139, rho 7140, rho 7141, rho 7142, rho 7143, r7150, r7151, r7152, r7153, r7154, tail⟩

theorem template_scp_node18_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7155 rho)
    (r7156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7156 rho)
    (r7157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7157 rho)
    (r7158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7158 rho)
    (r7159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7159 rho)
    (tail : next (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg62 (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) next := by
  exact ⟨rho 7144, rho 7145, rho 7146, rho 7147, rho 7148, r7155, r7156, r7157, r7158, r7159, tail⟩

theorem template_scp_node18_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7160 rho)
    (r7161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7161 rho)
    (r7162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7162 rho)
    (r7163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7163 rho)
    (r7164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7164 rho)
    (tail : next (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) (rho 7153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg63 (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) next := by
  exact ⟨rho 7149, rho 7150, rho 7151, rho 7152, rho 7153, r7160, r7161, r7162, r7163, r7164, tail⟩

theorem template_scp_node18_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7165 rho)
    (r7166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7166 rho)
    (r7167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7167 rho)
    (r7168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7168 rho)
    (r7169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7169 rho)
    (tail : next (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg64 (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) (rho 7153) next := by
  exact ⟨rho 7154, rho 7155, rho 7156, rho 7157, rho 7158, r7165, r7166, r7167, r7168, r7169, tail⟩

theorem template_scp_node18_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7170 rho)
    (r7171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7171 rho)
    (r7172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7172 rho)
    (r7173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7173 rho)
    (r7174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7174 rho)
    (tail : next (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg65 (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) next := by
  exact ⟨rho 7159, rho 7160, rho 7161, rho 7162, rho 7163, r7170, r7171, r7172, r7173, r7174, tail⟩

theorem template_scp_node18_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7175 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7175 rho)
    (r7176 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7176 rho)
    (r7177 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7177 rho)
    (r7178 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7178 rho)
    (r7179 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7179 rho)
    (tail : next (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) (rho 7168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg66 (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) next := by
  exact ⟨rho 7164, rho 7165, rho 7166, rho 7167, rho 7168, r7175, r7176, r7177, r7178, r7179, tail⟩

theorem template_scp_node18_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7180 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7180 rho)
    (r7181 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7181 rho)
    (r7182 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7182 rho)
    (r7183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7183 rho)
    (r7184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7184 rho)
    (tail : next (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) (rho 7168) (rho 7173)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg67 (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) (rho 7168) next := by
  exact ⟨rho 7169, rho 7170, rho 7171, rho 7172, rho 7173, r7180, r7181, r7182, r7183, r7184, tail⟩

theorem template_scp_node18_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7185 rho)
    (r7186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7186 rho)
    (r7187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7187 rho)
    (r7188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7188 rho)
    (r7189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7189 rho)
    (tail : next (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) (rho 7168) (rho 7173) (rho 7178)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg68 (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) (rho 7168) (rho 7173) next := by
  exact ⟨rho 7174, rho 7175, rho 7176, rho 7177, rho 7178, r7185, r7186, r7187, r7188, r7189, tail⟩

theorem template_scp_node18_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7190 rho)
    (r7191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7191 rho)
    (r7192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7192 rho)
    (r7193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7193 rho)
    (r7194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7194 rho)
    (tail : next (rho 7163) (rho 7168) (rho 7173) (rho 7178) (rho 7183)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg69 (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158) (rho 7163) (rho 7168) (rho 7173) (rho 7178) next := by
  exact ⟨rho 7179, rho 7180, rho 7181, rho 7182, rho 7183, r7190, r7191, r7192, r7193, r7194, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
