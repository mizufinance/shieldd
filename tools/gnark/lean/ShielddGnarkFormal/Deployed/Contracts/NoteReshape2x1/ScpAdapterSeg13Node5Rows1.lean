import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node5_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2163 : Seg13.relationRow2163 rho)
    (r2164 : Seg13.relationRow2164 rho)
    (r2165 : Seg13.relationRow2165 rho)
    (r2166 : Seg13.relationRow2166 rho)
    (r2167 : Seg13.relationRow2167 rho)
    (tail : next (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) (rho 9354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg10 (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) next := by
  exact ⟨rho 9350, rho 9351, rho 9352, rho 9353, rho 9354, r2163, r2164, r2165, r2166, r2167, tail⟩

theorem seg13_scp_node5_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2168 : Seg13.relationRow2168 rho)
    (r2169 : Seg13.relationRow2169 rho)
    (r2170 : Seg13.relationRow2170 rho)
    (r2171 : Seg13.relationRow2171 rho)
    (r2172 : Seg13.relationRow2172 rho)
    (tail : next (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) (rho 9354) (rho 9359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg11 (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) (rho 9354) next := by
  exact ⟨rho 9355, rho 9356, rho 9357, rho 9358, rho 9359, r2168, r2169, r2170, r2171, r2172, tail⟩

theorem seg13_scp_node5_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2173 : Seg13.relationRow2173 rho)
    (r2174 : Seg13.relationRow2174 rho)
    (r2175 : Seg13.relationRow2175 rho)
    (r2176 : Seg13.relationRow2176 rho)
    (r2177 : Seg13.relationRow2177 rho)
    (tail : next (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) (rho 9354) (rho 9359) (rho 9364)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg12 (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) (rho 9354) (rho 9359) next := by
  exact ⟨rho 9360, rho 9361, rho 9362, rho 9363, rho 9364, r2173, r2174, r2175, r2176, r2177, tail⟩

theorem seg13_scp_node5_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2178 : Seg13.relationRow2178 rho)
    (r2179 : Seg13.relationRow2179 rho)
    (r2180 : Seg13.relationRow2180 rho)
    (r2181 : Seg13.relationRow2181 rho)
    (r2182 : Seg13.relationRow2182 rho)
    (tail : next (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg13 (rho 9324) (rho 9329) (rho 9334) (rho 9339) (rho 9344) (rho 9349) (rho 9354) (rho 9359) (rho 9364) next := by
  exact ⟨rho 9365, rho 9366, rho 9367, rho 9368, rho 9369, r2178, r2179, r2180, r2181, r2182, tail⟩

theorem seg13_scp_node5_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2183 : Seg13.relationRow2183 rho)
    (r2184 : Seg13.relationRow2184 rho)
    (r2185 : Seg13.relationRow2185 rho)
    (r2186 : Seg13.relationRow2186 rho)
    (r2187 : Seg13.relationRow2187 rho)
    (tail : next (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg14 (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) next := by
  exact ⟨rho 9370, rho 9371, rho 9372, rho 9373, rho 9374, r2183, r2184, r2185, r2186, r2187, tail⟩

theorem seg13_scp_node5_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2188 : Seg13.relationRow2188 rho)
    (r2189 : Seg13.relationRow2189 rho)
    (r2190 : Seg13.relationRow2190 rho)
    (r2191 : Seg13.relationRow2191 rho)
    (r2192 : Seg13.relationRow2192 rho)
    (tail : next (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) (rho 9379)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg15 (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) next := by
  exact ⟨rho 9375, rho 9376, rho 9377, rho 9378, rho 9379, r2188, r2189, r2190, r2191, r2192, tail⟩

theorem seg13_scp_node5_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2193 : Seg13.relationRow2193 rho)
    (r2194 : Seg13.relationRow2194 rho)
    (r2195 : Seg13.relationRow2195 rho)
    (r2196 : Seg13.relationRow2196 rho)
    (r2197 : Seg13.relationRow2197 rho)
    (tail : next (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) (rho 9379) (rho 9384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg16 (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) (rho 9379) next := by
  exact ⟨rho 9380, rho 9381, rho 9382, rho 9383, rho 9384, r2193, r2194, r2195, r2196, r2197, tail⟩

theorem seg13_scp_node5_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2198 : Seg13.relationRow2198 rho)
    (r2199 : Seg13.relationRow2199 rho)
    (r2200 : Seg13.relationRow2200 rho)
    (r2201 : Seg13.relationRow2201 rho)
    (r2202 : Seg13.relationRow2202 rho)
    (tail : next (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) (rho 9379) (rho 9384) (rho 9389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg17 (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) (rho 9379) (rho 9384) next := by
  exact ⟨rho 9385, rho 9386, rho 9387, rho 9388, rho 9389, r2198, r2199, r2200, r2201, r2202, tail⟩

theorem seg13_scp_node5_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2203 : Seg13.relationRow2203 rho)
    (r2204 : Seg13.relationRow2204 rho)
    (r2205 : Seg13.relationRow2205 rho)
    (r2206 : Seg13.relationRow2206 rho)
    (r2207 : Seg13.relationRow2207 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg18 (rho 9349) (rho 9354) (rho 9359) (rho 9364) (rho 9369) (rho 9374) (rho 9379) (rho 9384) (rho 9389) next := by
  exact ⟨rho 9390, rho 9391, rho 9392, rho 9393, rho 9394, r2203, r2204, r2205, r2206, r2207, tail⟩

theorem seg13_scp_node5_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2208 : Seg13.relationRow2208 rho)
    (r2209 : Seg13.relationRow2209 rho)
    (r2210 : Seg13.relationRow2210 rho)
    (r2211 : Seg13.relationRow2211 rho)
    (r2212 : Seg13.relationRow2212 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg19 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) next := by
  exact ⟨rho 9395, rho 9396, rho 9397, rho 9398, rho 9399, r2208, r2209, r2210, r2211, r2212, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

