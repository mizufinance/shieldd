import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node5_seg20 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2213 : Seg13.relationRow2213 rho)
    (r2214 : Seg13.relationRow2214 rho)
    (r2215 : Seg13.relationRow2215 rho)
    (r2216 : Seg13.relationRow2216 rho)
    (r2217 : Seg13.relationRow2217 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg20 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) next := by
  exact ⟨rho 9400, rho 9401, rho 9402, rho 9403, rho 9404, r2213, r2214, r2215, r2216, r2217, tail⟩

theorem seg13_scp_node5_seg21 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2218 : Seg13.relationRow2218 rho)
    (r2219 : Seg13.relationRow2219 rho)
    (r2220 : Seg13.relationRow2220 rho)
    (r2221 : Seg13.relationRow2221 rho)
    (r2222 : Seg13.relationRow2222 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg21 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) next := by
  exact ⟨rho 9405, rho 9406, rho 9407, rho 9408, rho 9409, r2218, r2219, r2220, r2221, r2222, tail⟩

theorem seg13_scp_node5_seg22 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2223 : Seg13.relationRow2223 rho)
    (r2224 : Seg13.relationRow2224 rho)
    (r2225 : Seg13.relationRow2225 rho)
    (r2226 : Seg13.relationRow2226 rho)
    (r2227 : Seg13.relationRow2227 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg22 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) next := by
  exact ⟨rho 9410, rho 9411, rho 9412, rho 9413, rho 9414, r2223, r2224, r2225, r2226, r2227, tail⟩

theorem seg13_scp_node5_seg23 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2228 : Seg13.relationRow2228 rho)
    (r2229 : Seg13.relationRow2229 rho)
    (r2230 : Seg13.relationRow2230 rho)
    (r2231 : Seg13.relationRow2231 rho)
    (r2232 : Seg13.relationRow2232 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg23 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) next := by
  exact ⟨rho 9415, rho 9416, rho 9417, rho 9418, rho 9419, r2228, r2229, r2230, r2231, r2232, tail⟩

theorem seg13_scp_node5_seg24 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2233 : Seg13.relationRow2233 rho)
    (r2234 : Seg13.relationRow2234 rho)
    (r2235 : Seg13.relationRow2235 rho)
    (r2236 : Seg13.relationRow2236 rho)
    (r2237 : Seg13.relationRow2237 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg24 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) next := by
  exact ⟨rho 9420, rho 9421, rho 9422, rho 9423, rho 9424, r2233, r2234, r2235, r2236, r2237, tail⟩

theorem seg13_scp_node5_seg25 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2238 : Seg13.relationRow2238 rho)
    (r2239 : Seg13.relationRow2239 rho)
    (r2240 : Seg13.relationRow2240 rho)
    (r2241 : Seg13.relationRow2241 rho)
    (r2242 : Seg13.relationRow2242 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg25 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) next := by
  exact ⟨rho 9425, rho 9426, rho 9427, rho 9428, rho 9429, r2238, r2239, r2240, r2241, r2242, tail⟩

theorem seg13_scp_node5_seg26 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2243 : Seg13.relationRow2243 rho)
    (r2244 : Seg13.relationRow2244 rho)
    (r2245 : Seg13.relationRow2245 rho)
    (r2246 : Seg13.relationRow2246 rho)
    (r2247 : Seg13.relationRow2247 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg26 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) next := by
  exact ⟨rho 9430, rho 9431, rho 9432, rho 9433, rho 9434, r2243, r2244, r2245, r2246, r2247, tail⟩

theorem seg13_scp_node5_seg27 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2248 : Seg13.relationRow2248 rho)
    (r2249 : Seg13.relationRow2249 rho)
    (r2250 : Seg13.relationRow2250 rho)
    (r2251 : Seg13.relationRow2251 rho)
    (r2252 : Seg13.relationRow2252 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg27 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) next := by
  exact ⟨rho 9435, rho 9436, rho 9437, rho 9438, rho 9439, r2248, r2249, r2250, r2251, r2252, tail⟩

theorem seg13_scp_node5_seg28 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2253 : Seg13.relationRow2253 rho)
    (r2254 : Seg13.relationRow2254 rho)
    (r2255 : Seg13.relationRow2255 rho)
    (r2256 : Seg13.relationRow2256 rho)
    (r2257 : Seg13.relationRow2257 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg28 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) next := by
  exact ⟨rho 9440, rho 9441, rho 9442, rho 9443, rho 9444, r2253, r2254, r2255, r2256, r2257, tail⟩

theorem seg13_scp_node5_seg29 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2258 : Seg13.relationRow2258 rho)
    (r2259 : Seg13.relationRow2259 rho)
    (r2260 : Seg13.relationRow2260 rho)
    (r2261 : Seg13.relationRow2261 rho)
    (r2262 : Seg13.relationRow2262 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg29 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) next := by
  exact ⟨rho 9445, rho 9446, rho 9447, rho 9448, rho 9449, r2258, r2259, r2260, r2261, r2262, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

