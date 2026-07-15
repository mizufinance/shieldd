import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node19_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7209 : Seg13.relationRow7209 rho)
    (r7210 : Seg13.relationRow7210 rho)
    (r7211 : Seg13.relationRow7211 rho)
    (r7212 : Seg13.relationRow7212 rho)
    (r7213 : Seg13.relationRow7213 rho)
    (tail : next (rho 38) (rho 39) (rho 14341) (rho 14342) (rho 14343) (rho 14344) (rho 14345) (rho 14350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg0 (rho 37) (rho 38) (rho 39) (rho 14340) (rho 14341) (rho 14342) (rho 14343) (rho 14344) (rho 14345) next := by
  exact ⟨rho 14346, rho 14347, rho 14348, rho 14349, rho 14350, r7209, r7210, r7211, r7212, r7213, tail⟩

theorem seg13_scp_node19_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7214 : Seg13.relationRow7214 rho)
    (r7215 : Seg13.relationRow7215 rho)
    (r7216 : Seg13.relationRow7216 rho)
    (r7217 : Seg13.relationRow7217 rho)
    (r7218 : Seg13.relationRow7218 rho)
    (tail : next (rho 38) (rho 39) (rho 14343) (rho 14344) (rho 14345) (rho 14350) (rho 14355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg1 (rho 38) (rho 39) (rho 14341) (rho 14342) (rho 14343) (rho 14344) (rho 14345) (rho 14350) next := by
  exact ⟨rho 14351, rho 14352, rho 14353, rho 14354, rho 14355, r7214, r7215, r7216, r7217, r7218, tail⟩

theorem seg13_scp_node19_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7219 : Seg13.relationRow7219 rho)
    (r7220 : Seg13.relationRow7220 rho)
    (r7221 : Seg13.relationRow7221 rho)
    (r7222 : Seg13.relationRow7222 rho)
    (r7223 : Seg13.relationRow7223 rho)
    (tail : next (rho 39) (rho 14345) (rho 14350) (rho 14355) (rho 14360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg2 (rho 38) (rho 39) (rho 14343) (rho 14344) (rho 14345) (rho 14350) (rho 14355) next := by
  exact ⟨rho 14356, rho 14357, rho 14358, rho 14359, rho 14360, r7219, r7220, r7221, r7222, r7223, tail⟩

theorem seg13_scp_node19_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7224 : Seg13.relationRow7224 rho)
    (r7225 : Seg13.relationRow7225 rho)
    (r7226 : Seg13.relationRow7226 rho)
    (r7227 : Seg13.relationRow7227 rho)
    (r7228 : Seg13.relationRow7228 rho)
    (tail : next (rho 14350) (rho 14355) (rho 14360) (rho 14365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg3 (rho 39) (rho 14345) (rho 14350) (rho 14355) (rho 14360) next := by
  exact ⟨rho 14361, rho 14362, rho 14363, rho 14364, rho 14365, r7224, r7225, r7226, r7227, r7228, tail⟩

theorem seg13_scp_node19_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7229 : Seg13.relationRow7229 rho)
    (r7230 : Seg13.relationRow7230 rho)
    (r7231 : Seg13.relationRow7231 rho)
    (r7232 : Seg13.relationRow7232 rho)
    (r7233 : Seg13.relationRow7233 rho)
    (tail : next (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg4 (rho 14350) (rho 14355) (rho 14360) (rho 14365) next := by
  exact ⟨rho 14366, rho 14367, rho 14368, rho 14369, rho 14370, r7229, r7230, r7231, r7232, r7233, tail⟩

theorem seg13_scp_node19_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7234 : Seg13.relationRow7234 rho)
    (r7235 : Seg13.relationRow7235 rho)
    (r7236 : Seg13.relationRow7236 rho)
    (r7237 : Seg13.relationRow7237 rho)
    (r7238 : Seg13.relationRow7238 rho)
    (tail : next (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) (rho 14375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg5 (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) next := by
  exact ⟨rho 14371, rho 14372, rho 14373, rho 14374, rho 14375, r7234, r7235, r7236, r7237, r7238, tail⟩

theorem seg13_scp_node19_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7239 : Seg13.relationRow7239 rho)
    (r7240 : Seg13.relationRow7240 rho)
    (r7241 : Seg13.relationRow7241 rho)
    (r7242 : Seg13.relationRow7242 rho)
    (r7243 : Seg13.relationRow7243 rho)
    (tail : next (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) (rho 14375) (rho 14380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg6 (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) (rho 14375) next := by
  exact ⟨rho 14376, rho 14377, rho 14378, rho 14379, rho 14380, r7239, r7240, r7241, r7242, r7243, tail⟩

theorem seg13_scp_node19_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7244 : Seg13.relationRow7244 rho)
    (r7245 : Seg13.relationRow7245 rho)
    (r7246 : Seg13.relationRow7246 rho)
    (r7247 : Seg13.relationRow7247 rho)
    (r7248 : Seg13.relationRow7248 rho)
    (tail : next (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) (rho 14375) (rho 14380) (rho 14385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg7 (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) (rho 14375) (rho 14380) next := by
  exact ⟨rho 14381, rho 14382, rho 14383, rho 14384, rho 14385, r7244, r7245, r7246, r7247, r7248, tail⟩

theorem seg13_scp_node19_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7249 : Seg13.relationRow7249 rho)
    (r7250 : Seg13.relationRow7250 rho)
    (r7251 : Seg13.relationRow7251 rho)
    (r7252 : Seg13.relationRow7252 rho)
    (r7253 : Seg13.relationRow7253 rho)
    (tail : next (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg8 (rho 14350) (rho 14355) (rho 14360) (rho 14365) (rho 14370) (rho 14375) (rho 14380) (rho 14385) next := by
  exact ⟨rho 14386, rho 14387, rho 14388, rho 14389, rho 14390, r7249, r7250, r7251, r7252, r7253, tail⟩

theorem seg13_scp_node19_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7254 : Seg13.relationRow7254 rho)
    (r7255 : Seg13.relationRow7255 rho)
    (r7256 : Seg13.relationRow7256 rho)
    (r7257 : Seg13.relationRow7257 rho)
    (r7258 : Seg13.relationRow7258 rho)
    (tail : next (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) (rho 14395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg9 (rho 14370) (rho 14375) (rho 14380) (rho 14385) (rho 14390) next := by
  exact ⟨rho 14391, rho 14392, rho 14393, rho 14394, rho 14395, r7254, r7255, r7256, r7257, r7258, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

