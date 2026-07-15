import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node5_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2113 : Seg13.relationRow2113 rho)
    (r2114 : Seg13.relationRow2114 rho)
    (r2115 : Seg13.relationRow2115 rho)
    (r2116 : Seg13.relationRow2116 rho)
    (r2117 : Seg13.relationRow2117 rho)
    (tail : next (rho 80) (rho 81) (rho 9301) (rho 9302) (rho 9303) (rho 9304) (rho 9305) (rho 9310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg0 (rho 79) (rho 80) (rho 81) (rho 9300) (rho 9301) (rho 9302) (rho 9303) (rho 9304) (rho 9305) next := by
  exact ⟨rho 9306, rho 9307, rho 9308, rho 9309, rho 9310, r2113, r2114, r2115, r2116, r2117, tail⟩

theorem seg13_scp_node5_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2118 : Seg13.relationRow2118 rho)
    (r2119 : Seg13.relationRow2119 rho)
    (r2120 : Seg13.relationRow2120 rho)
    (r2121 : Seg13.relationRow2121 rho)
    (r2122 : Seg13.relationRow2122 rho)
    (tail : next (rho 80) (rho 81) (rho 9303) (rho 9304) (rho 9305) (rho 9310) (rho 9315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg1 (rho 80) (rho 81) (rho 9301) (rho 9302) (rho 9303) (rho 9304) (rho 9305) (rho 9310) next := by
  exact ⟨rho 9311, rho 9312, rho 9313, rho 9314, rho 9315, r2118, r2119, r2120, r2121, r2122, tail⟩

theorem seg13_scp_node5_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2123 : Seg13.relationRow2123 rho)
    (r2124 : Seg13.relationRow2124 rho)
    (r2125 : Seg13.relationRow2125 rho)
    (r2126 : Seg13.relationRow2126 rho)
    (r2127 : Seg13.relationRow2127 rho)
    (tail : next (rho 81) (rho 9305) (rho 9310) (rho 9315) (rho 9320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg2 (rho 80) (rho 81) (rho 9303) (rho 9304) (rho 9305) (rho 9310) (rho 9315) next := by
  exact ⟨rho 9316, rho 9317, rho 9318, rho 9319, rho 9320, r2123, r2124, r2125, r2126, r2127, tail⟩

theorem seg13_scp_node5_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2128 : Seg13.relationRow2128 rho)
    (r2129 : Seg13.relationRow2129 rho)
    (r2130 : Seg13.relationRow2130 rho)
    (r2131 : Seg13.relationRow2131 rho)
    (r2132 : Seg13.relationRow2132 rho)
    (tail : next (rho 9310) (rho 9315) (rho 9320) (rho 9325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg3 (rho 81) (rho 9305) (rho 9310) (rho 9315) (rho 9320) next := by
  exact ⟨rho 9321, rho 9322, rho 9323, rho 9324, rho 9325, r2128, r2129, r2130, r2131, r2132, tail⟩

theorem seg13_scp_node5_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2133 : Seg13.relationRow2133 rho)
    (r2134 : Seg13.relationRow2134 rho)
    (r2135 : Seg13.relationRow2135 rho)
    (r2136 : Seg13.relationRow2136 rho)
    (r2137 : Seg13.relationRow2137 rho)
    (tail : next (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg4 (rho 9310) (rho 9315) (rho 9320) (rho 9325) next := by
  exact ⟨rho 9326, rho 9327, rho 9328, rho 9329, rho 9330, r2133, r2134, r2135, r2136, r2137, tail⟩

theorem seg13_scp_node5_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2138 : Seg13.relationRow2138 rho)
    (r2139 : Seg13.relationRow2139 rho)
    (r2140 : Seg13.relationRow2140 rho)
    (r2141 : Seg13.relationRow2141 rho)
    (r2142 : Seg13.relationRow2142 rho)
    (tail : next (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) (rho 9335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg5 (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) next := by
  exact ⟨rho 9331, rho 9332, rho 9333, rho 9334, rho 9335, r2138, r2139, r2140, r2141, r2142, tail⟩

theorem seg13_scp_node5_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2143 : Seg13.relationRow2143 rho)
    (r2144 : Seg13.relationRow2144 rho)
    (r2145 : Seg13.relationRow2145 rho)
    (r2146 : Seg13.relationRow2146 rho)
    (r2147 : Seg13.relationRow2147 rho)
    (tail : next (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) (rho 9335) (rho 9340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg6 (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) (rho 9335) next := by
  exact ⟨rho 9336, rho 9337, rho 9338, rho 9339, rho 9340, r2143, r2144, r2145, r2146, r2147, tail⟩

theorem seg13_scp_node5_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2148 : Seg13.relationRow2148 rho)
    (r2149 : Seg13.relationRow2149 rho)
    (r2150 : Seg13.relationRow2150 rho)
    (r2151 : Seg13.relationRow2151 rho)
    (r2152 : Seg13.relationRow2152 rho)
    (tail : next (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) (rho 9335) (rho 9340) (rho 9345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg7 (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) (rho 9335) (rho 9340) next := by
  exact ⟨rho 9341, rho 9342, rho 9343, rho 9344, rho 9345, r2148, r2149, r2150, r2151, r2152, tail⟩

theorem seg13_scp_node5_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2153 : Seg13.relationRow2153 rho)
    (r2154 : Seg13.relationRow2154 rho)
    (r2155 : Seg13.relationRow2155 rho)
    (r2156 : Seg13.relationRow2156 rho)
    (r2157 : Seg13.relationRow2157 rho)
    (tail : next (rho 9330) (rho 9335) (rho 9340) (rho 9345) (rho 9350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg8 (rho 9310) (rho 9315) (rho 9320) (rho 9325) (rho 9330) (rho 9335) (rho 9340) (rho 9345) next := by
  exact ⟨rho 9346, rho 9347, rho 9348, rho 9349, rho 9350, r2153, r2154, r2155, r2156, r2157, tail⟩

theorem seg13_scp_node5_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2158 : Seg13.relationRow2158 rho)
    (r2159 : Seg13.relationRow2159 rho)
    (r2160 : Seg13.relationRow2160 rho)
    (r2161 : Seg13.relationRow2161 rho)
    (r2162 : Seg13.relationRow2162 rho)
    (tail : next (rho 9330) (rho 9335) (rho 9340) (rho 9345) (rho 9350) (rho 9355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg9 (rho 9330) (rho 9335) (rho 9340) (rho 9345) (rho 9350) next := by
  exact ⟨rho 9351, rho 9352, rho 9353, rho 9354, rho 9355, r2158, r2159, r2160, r2161, r2162, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

