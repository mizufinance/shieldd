import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node5_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2163 : Seg28.relationRow2163 rho)
    (r2164 : Seg28.relationRow2164 rho)
    (r2165 : Seg28.relationRow2165 rho)
    (r2166 : Seg28.relationRow2166 rho)
    (r2167 : Seg28.relationRow2167 rho)
    (tail : next (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) (rho 21541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg10 (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) next := by
  exact ⟨rho 21537, rho 21538, rho 21539, rho 21540, rho 21541, r2163, r2164, r2165, r2166, r2167, tail⟩

theorem seg28_scp_node5_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2168 : Seg28.relationRow2168 rho)
    (r2169 : Seg28.relationRow2169 rho)
    (r2170 : Seg28.relationRow2170 rho)
    (r2171 : Seg28.relationRow2171 rho)
    (r2172 : Seg28.relationRow2172 rho)
    (tail : next (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) (rho 21541) (rho 21546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg11 (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) (rho 21541) next := by
  exact ⟨rho 21542, rho 21543, rho 21544, rho 21545, rho 21546, r2168, r2169, r2170, r2171, r2172, tail⟩

theorem seg28_scp_node5_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2173 : Seg28.relationRow2173 rho)
    (r2174 : Seg28.relationRow2174 rho)
    (r2175 : Seg28.relationRow2175 rho)
    (r2176 : Seg28.relationRow2176 rho)
    (r2177 : Seg28.relationRow2177 rho)
    (tail : next (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) (rho 21541) (rho 21546) (rho 21551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg12 (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) (rho 21541) (rho 21546) next := by
  exact ⟨rho 21547, rho 21548, rho 21549, rho 21550, rho 21551, r2173, r2174, r2175, r2176, r2177, tail⟩

theorem seg28_scp_node5_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2178 : Seg28.relationRow2178 rho)
    (r2179 : Seg28.relationRow2179 rho)
    (r2180 : Seg28.relationRow2180 rho)
    (r2181 : Seg28.relationRow2181 rho)
    (r2182 : Seg28.relationRow2182 rho)
    (tail : next (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg13 (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536) (rho 21541) (rho 21546) (rho 21551) next := by
  exact ⟨rho 21552, rho 21553, rho 21554, rho 21555, rho 21556, r2178, r2179, r2180, r2181, r2182, tail⟩

theorem seg28_scp_node5_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2183 : Seg28.relationRow2183 rho)
    (r2184 : Seg28.relationRow2184 rho)
    (r2185 : Seg28.relationRow2185 rho)
    (r2186 : Seg28.relationRow2186 rho)
    (r2187 : Seg28.relationRow2187 rho)
    (tail : next (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg14 (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) next := by
  exact ⟨rho 21557, rho 21558, rho 21559, rho 21560, rho 21561, r2183, r2184, r2185, r2186, r2187, tail⟩

theorem seg28_scp_node5_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2188 : Seg28.relationRow2188 rho)
    (r2189 : Seg28.relationRow2189 rho)
    (r2190 : Seg28.relationRow2190 rho)
    (r2191 : Seg28.relationRow2191 rho)
    (r2192 : Seg28.relationRow2192 rho)
    (tail : next (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) (rho 21566)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg15 (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) next := by
  exact ⟨rho 21562, rho 21563, rho 21564, rho 21565, rho 21566, r2188, r2189, r2190, r2191, r2192, tail⟩

theorem seg28_scp_node5_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2193 : Seg28.relationRow2193 rho)
    (r2194 : Seg28.relationRow2194 rho)
    (r2195 : Seg28.relationRow2195 rho)
    (r2196 : Seg28.relationRow2196 rho)
    (r2197 : Seg28.relationRow2197 rho)
    (tail : next (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) (rho 21566) (rho 21571)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg16 (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) (rho 21566) next := by
  exact ⟨rho 21567, rho 21568, rho 21569, rho 21570, rho 21571, r2193, r2194, r2195, r2196, r2197, tail⟩

theorem seg28_scp_node5_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2198 : Seg28.relationRow2198 rho)
    (r2199 : Seg28.relationRow2199 rho)
    (r2200 : Seg28.relationRow2200 rho)
    (r2201 : Seg28.relationRow2201 rho)
    (r2202 : Seg28.relationRow2202 rho)
    (tail : next (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) (rho 21566) (rho 21571) (rho 21576)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg17 (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) (rho 21566) (rho 21571) next := by
  exact ⟨rho 21572, rho 21573, rho 21574, rho 21575, rho 21576, r2198, r2199, r2200, r2201, r2202, tail⟩

theorem seg28_scp_node5_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2203 : Seg28.relationRow2203 rho)
    (r2204 : Seg28.relationRow2204 rho)
    (r2205 : Seg28.relationRow2205 rho)
    (r2206 : Seg28.relationRow2206 rho)
    (r2207 : Seg28.relationRow2207 rho)
    (tail : next (rho 21561) (rho 21566) (rho 21571) (rho 21576) (rho 21581)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg18 (rho 21536) (rho 21541) (rho 21546) (rho 21551) (rho 21556) (rho 21561) (rho 21566) (rho 21571) (rho 21576) next := by
  exact ⟨rho 21577, rho 21578, rho 21579, rho 21580, rho 21581, r2203, r2204, r2205, r2206, r2207, tail⟩

theorem seg28_scp_node5_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2208 : Seg28.relationRow2208 rho)
    (r2209 : Seg28.relationRow2209 rho)
    (r2210 : Seg28.relationRow2210 rho)
    (r2211 : Seg28.relationRow2211 rho)
    (r2212 : Seg28.relationRow2212 rho)
    (tail : next (rho 21561) (rho 21566) (rho 21571) (rho 21576) (rho 21581) (rho 21586)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg19 (rho 21561) (rho 21566) (rho 21571) (rho 21576) (rho 21581) next := by
  exact ⟨rho 21582, rho 21583, rho 21584, rho 21585, rho 21586, r2208, r2209, r2210, r2211, r2212, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

