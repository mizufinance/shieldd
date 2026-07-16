import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node5_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2113 : Seg28.relationRow2113 rho)
    (r2114 : Seg28.relationRow2114 rho)
    (r2115 : Seg28.relationRow2115 rho)
    (r2116 : Seg28.relationRow2116 rho)
    (r2117 : Seg28.relationRow2117 rho)
    (tail : next (rho 170) (rho 171) (rho 21482) (rho 21483) (rho 21484) (rho 21485) (rho 21486) (rho 21491)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg0 (rho 169) (rho 170) (rho 171) (rho 21481) (rho 21482) (rho 21483) (rho 21484) (rho 21485) (rho 21486) next := by
  exact ⟨rho 21487, rho 21488, rho 21489, rho 21490, rho 21491, r2113, r2114, r2115, r2116, r2117, tail⟩

theorem seg28_scp_node5_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2118 : Seg28.relationRow2118 rho)
    (r2119 : Seg28.relationRow2119 rho)
    (r2120 : Seg28.relationRow2120 rho)
    (r2121 : Seg28.relationRow2121 rho)
    (r2122 : Seg28.relationRow2122 rho)
    (tail : next (rho 170) (rho 171) (rho 21484) (rho 21485) (rho 21486) (rho 21491) (rho 21496)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg1 (rho 170) (rho 171) (rho 21482) (rho 21483) (rho 21484) (rho 21485) (rho 21486) (rho 21491) next := by
  exact ⟨rho 21492, rho 21493, rho 21494, rho 21495, rho 21496, r2118, r2119, r2120, r2121, r2122, tail⟩

theorem seg28_scp_node5_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2123 : Seg28.relationRow2123 rho)
    (r2124 : Seg28.relationRow2124 rho)
    (r2125 : Seg28.relationRow2125 rho)
    (r2126 : Seg28.relationRow2126 rho)
    (r2127 : Seg28.relationRow2127 rho)
    (tail : next (rho 171) (rho 21486) (rho 21491) (rho 21496) (rho 21501)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg2 (rho 170) (rho 171) (rho 21484) (rho 21485) (rho 21486) (rho 21491) (rho 21496) next := by
  exact ⟨rho 21497, rho 21498, rho 21499, rho 21500, rho 21501, r2123, r2124, r2125, r2126, r2127, tail⟩

theorem seg28_scp_node5_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2128 : Seg28.relationRow2128 rho)
    (r2129 : Seg28.relationRow2129 rho)
    (r2130 : Seg28.relationRow2130 rho)
    (r2131 : Seg28.relationRow2131 rho)
    (r2132 : Seg28.relationRow2132 rho)
    (tail : next (rho 21491) (rho 21496) (rho 21501) (rho 21506)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg3 (rho 171) (rho 21486) (rho 21491) (rho 21496) (rho 21501) next := by
  exact ⟨rho 21502, rho 21503, rho 21504, rho 21505, rho 21506, r2128, r2129, r2130, r2131, r2132, tail⟩

theorem seg28_scp_node5_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2133 : Seg28.relationRow2133 rho)
    (r2134 : Seg28.relationRow2134 rho)
    (r2135 : Seg28.relationRow2135 rho)
    (r2136 : Seg28.relationRow2136 rho)
    (r2137 : Seg28.relationRow2137 rho)
    (tail : next (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg4 (rho 21491) (rho 21496) (rho 21501) (rho 21506) next := by
  exact ⟨rho 21507, rho 21508, rho 21509, rho 21510, rho 21511, r2133, r2134, r2135, r2136, r2137, tail⟩

theorem seg28_scp_node5_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2138 : Seg28.relationRow2138 rho)
    (r2139 : Seg28.relationRow2139 rho)
    (r2140 : Seg28.relationRow2140 rho)
    (r2141 : Seg28.relationRow2141 rho)
    (r2142 : Seg28.relationRow2142 rho)
    (tail : next (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) (rho 21516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg5 (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) next := by
  exact ⟨rho 21512, rho 21513, rho 21514, rho 21515, rho 21516, r2138, r2139, r2140, r2141, r2142, tail⟩

theorem seg28_scp_node5_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2143 : Seg28.relationRow2143 rho)
    (r2144 : Seg28.relationRow2144 rho)
    (r2145 : Seg28.relationRow2145 rho)
    (r2146 : Seg28.relationRow2146 rho)
    (r2147 : Seg28.relationRow2147 rho)
    (tail : next (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) (rho 21516) (rho 21521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg6 (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) (rho 21516) next := by
  exact ⟨rho 21517, rho 21518, rho 21519, rho 21520, rho 21521, r2143, r2144, r2145, r2146, r2147, tail⟩

theorem seg28_scp_node5_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2148 : Seg28.relationRow2148 rho)
    (r2149 : Seg28.relationRow2149 rho)
    (r2150 : Seg28.relationRow2150 rho)
    (r2151 : Seg28.relationRow2151 rho)
    (r2152 : Seg28.relationRow2152 rho)
    (tail : next (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) (rho 21516) (rho 21521) (rho 21526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg7 (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) (rho 21516) (rho 21521) next := by
  exact ⟨rho 21522, rho 21523, rho 21524, rho 21525, rho 21526, r2148, r2149, r2150, r2151, r2152, tail⟩

theorem seg28_scp_node5_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2153 : Seg28.relationRow2153 rho)
    (r2154 : Seg28.relationRow2154 rho)
    (r2155 : Seg28.relationRow2155 rho)
    (r2156 : Seg28.relationRow2156 rho)
    (r2157 : Seg28.relationRow2157 rho)
    (tail : next (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg8 (rho 21491) (rho 21496) (rho 21501) (rho 21506) (rho 21511) (rho 21516) (rho 21521) (rho 21526) next := by
  exact ⟨rho 21527, rho 21528, rho 21529, rho 21530, rho 21531, r2153, r2154, r2155, r2156, r2157, tail⟩

theorem seg28_scp_node5_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2158 : Seg28.relationRow2158 rho)
    (r2159 : Seg28.relationRow2159 rho)
    (r2160 : Seg28.relationRow2160 rho)
    (r2161 : Seg28.relationRow2161 rho)
    (r2162 : Seg28.relationRow2162 rho)
    (tail : next (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) (rho 21536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg9 (rho 21511) (rho 21516) (rho 21521) (rho 21526) (rho 21531) next := by
  exact ⟨rho 21532, rho 21533, rho 21534, rho 21535, rho 21536, r2158, r2159, r2160, r2161, r2162, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

