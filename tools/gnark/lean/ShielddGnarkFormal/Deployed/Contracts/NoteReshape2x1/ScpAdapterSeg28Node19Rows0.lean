import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node19_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7209 : Seg28.relationRow7209 rho)
    (r7210 : Seg28.relationRow7210 rho)
    (r7211 : Seg28.relationRow7211 rho)
    (r7212 : Seg28.relationRow7212 rho)
    (r7213 : Seg28.relationRow7213 rho)
    (tail : next (rho 125) (rho 126) (rho 26516) (rho 26517) (rho 26518) (rho 26519) (rho 26520) (rho 26525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg0 (rho 124) (rho 125) (rho 126) (rho 26515) (rho 26516) (rho 26517) (rho 26518) (rho 26519) (rho 26520) next := by
  exact ⟨rho 26521, rho 26522, rho 26523, rho 26524, rho 26525, r7209, r7210, r7211, r7212, r7213, tail⟩

theorem seg28_scp_node19_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7214 : Seg28.relationRow7214 rho)
    (r7215 : Seg28.relationRow7215 rho)
    (r7216 : Seg28.relationRow7216 rho)
    (r7217 : Seg28.relationRow7217 rho)
    (r7218 : Seg28.relationRow7218 rho)
    (tail : next (rho 125) (rho 126) (rho 26518) (rho 26519) (rho 26520) (rho 26525) (rho 26530)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg1 (rho 125) (rho 126) (rho 26516) (rho 26517) (rho 26518) (rho 26519) (rho 26520) (rho 26525) next := by
  exact ⟨rho 26526, rho 26527, rho 26528, rho 26529, rho 26530, r7214, r7215, r7216, r7217, r7218, tail⟩

theorem seg28_scp_node19_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7219 : Seg28.relationRow7219 rho)
    (r7220 : Seg28.relationRow7220 rho)
    (r7221 : Seg28.relationRow7221 rho)
    (r7222 : Seg28.relationRow7222 rho)
    (r7223 : Seg28.relationRow7223 rho)
    (tail : next (rho 126) (rho 26520) (rho 26525) (rho 26530) (rho 26535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg2 (rho 125) (rho 126) (rho 26518) (rho 26519) (rho 26520) (rho 26525) (rho 26530) next := by
  exact ⟨rho 26531, rho 26532, rho 26533, rho 26534, rho 26535, r7219, r7220, r7221, r7222, r7223, tail⟩

theorem seg28_scp_node19_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7224 : Seg28.relationRow7224 rho)
    (r7225 : Seg28.relationRow7225 rho)
    (r7226 : Seg28.relationRow7226 rho)
    (r7227 : Seg28.relationRow7227 rho)
    (r7228 : Seg28.relationRow7228 rho)
    (tail : next (rho 26525) (rho 26530) (rho 26535) (rho 26540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg3 (rho 126) (rho 26520) (rho 26525) (rho 26530) (rho 26535) next := by
  exact ⟨rho 26536, rho 26537, rho 26538, rho 26539, rho 26540, r7224, r7225, r7226, r7227, r7228, tail⟩

theorem seg28_scp_node19_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7229 : Seg28.relationRow7229 rho)
    (r7230 : Seg28.relationRow7230 rho)
    (r7231 : Seg28.relationRow7231 rho)
    (r7232 : Seg28.relationRow7232 rho)
    (r7233 : Seg28.relationRow7233 rho)
    (tail : next (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg4 (rho 26525) (rho 26530) (rho 26535) (rho 26540) next := by
  exact ⟨rho 26541, rho 26542, rho 26543, rho 26544, rho 26545, r7229, r7230, r7231, r7232, r7233, tail⟩

theorem seg28_scp_node19_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7234 : Seg28.relationRow7234 rho)
    (r7235 : Seg28.relationRow7235 rho)
    (r7236 : Seg28.relationRow7236 rho)
    (r7237 : Seg28.relationRow7237 rho)
    (r7238 : Seg28.relationRow7238 rho)
    (tail : next (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) (rho 26550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg5 (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) next := by
  exact ⟨rho 26546, rho 26547, rho 26548, rho 26549, rho 26550, r7234, r7235, r7236, r7237, r7238, tail⟩

theorem seg28_scp_node19_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7239 : Seg28.relationRow7239 rho)
    (r7240 : Seg28.relationRow7240 rho)
    (r7241 : Seg28.relationRow7241 rho)
    (r7242 : Seg28.relationRow7242 rho)
    (r7243 : Seg28.relationRow7243 rho)
    (tail : next (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) (rho 26550) (rho 26555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg6 (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) (rho 26550) next := by
  exact ⟨rho 26551, rho 26552, rho 26553, rho 26554, rho 26555, r7239, r7240, r7241, r7242, r7243, tail⟩

theorem seg28_scp_node19_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7244 : Seg28.relationRow7244 rho)
    (r7245 : Seg28.relationRow7245 rho)
    (r7246 : Seg28.relationRow7246 rho)
    (r7247 : Seg28.relationRow7247 rho)
    (r7248 : Seg28.relationRow7248 rho)
    (tail : next (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) (rho 26550) (rho 26555) (rho 26560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg7 (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) (rho 26550) (rho 26555) next := by
  exact ⟨rho 26556, rho 26557, rho 26558, rho 26559, rho 26560, r7244, r7245, r7246, r7247, r7248, tail⟩

theorem seg28_scp_node19_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7249 : Seg28.relationRow7249 rho)
    (r7250 : Seg28.relationRow7250 rho)
    (r7251 : Seg28.relationRow7251 rho)
    (r7252 : Seg28.relationRow7252 rho)
    (r7253 : Seg28.relationRow7253 rho)
    (tail : next (rho 26545) (rho 26550) (rho 26555) (rho 26560) (rho 26565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg8 (rho 26525) (rho 26530) (rho 26535) (rho 26540) (rho 26545) (rho 26550) (rho 26555) (rho 26560) next := by
  exact ⟨rho 26561, rho 26562, rho 26563, rho 26564, rho 26565, r7249, r7250, r7251, r7252, r7253, tail⟩

theorem seg28_scp_node19_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7254 : Seg28.relationRow7254 rho)
    (r7255 : Seg28.relationRow7255 rho)
    (r7256 : Seg28.relationRow7256 rho)
    (r7257 : Seg28.relationRow7257 rho)
    (r7258 : Seg28.relationRow7258 rho)
    (tail : next (rho 26545) (rho 26550) (rho 26555) (rho 26560) (rho 26565) (rho 26570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg9 (rho 26545) (rho 26550) (rho 26555) (rho 26560) (rho 26565) next := by
  exact ⟨rho 26566, rho 26567, rho 26568, rho 26569, rho 26570, r7254, r7255, r7256, r7257, r7258, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

