import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node5_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2113 rho)
    (r2114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2114 rho)
    (r2115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2115 rho)
    (r2116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2116 rho)
    (r2117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2117 rho)
    (tail : next (rho 2107) (rho 2110) (rho 2108) (rho 2109) (rho 2111) (rho 2112) (rho 2113) (rho 2118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg0 (rho 2105) (rho 2107) (rho 2110) (rho 2106) (rho 2108) (rho 2109) (rho 2111) (rho 2112) (rho 2113) next := by
  exact ⟨rho 2114, rho 2115, rho 2116, rho 2117, rho 2118, r2113, r2114, r2115, r2116, r2117, tail⟩

theorem template_scp_node5_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2118 rho)
    (r2119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2119 rho)
    (r2120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2120 rho)
    (r2121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2121 rho)
    (r2122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2122 rho)
    (tail : next (rho 2107) (rho 2110) (rho 2111) (rho 2112) (rho 2113) (rho 2118) (rho 2123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg1 (rho 2107) (rho 2110) (rho 2108) (rho 2109) (rho 2111) (rho 2112) (rho 2113) (rho 2118) next := by
  exact ⟨rho 2119, rho 2120, rho 2121, rho 2122, rho 2123, r2118, r2119, r2120, r2121, r2122, tail⟩

theorem template_scp_node5_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2123 rho)
    (r2124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2124 rho)
    (r2125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2125 rho)
    (r2126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2126 rho)
    (r2127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2127 rho)
    (tail : next (rho 2110) (rho 2113) (rho 2118) (rho 2123) (rho 2128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg2 (rho 2107) (rho 2110) (rho 2111) (rho 2112) (rho 2113) (rho 2118) (rho 2123) next := by
  exact ⟨rho 2124, rho 2125, rho 2126, rho 2127, rho 2128, r2123, r2124, r2125, r2126, r2127, tail⟩

theorem template_scp_node5_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r2128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2128 rho)
    (r2129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2129 rho)
    (r2130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2130 rho)
    (r2131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2131 rho)
    (r2132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2132 rho)
    (tail : next (rho 2118) (rho 2123) (rho 2128) (rho 2133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg3 (rho 2110) (rho 2113) (rho 2118) (rho 2123) (rho 2128) next := by
  exact ⟨rho 2129, rho 2130, rho 2131, rho 2132, rho 2133, r2128, r2129, r2130, r2131, r2132, tail⟩

theorem template_scp_node5_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2133 rho)
    (r2134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2134 rho)
    (r2135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2135 rho)
    (r2136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2136 rho)
    (r2137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2137 rho)
    (tail : next (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg4 (rho 2118) (rho 2123) (rho 2128) (rho 2133) next := by
  exact ⟨rho 2134, rho 2135, rho 2136, rho 2137, rho 2138, r2133, r2134, r2135, r2136, r2137, tail⟩

theorem template_scp_node5_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2138 rho)
    (r2139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2139 rho)
    (r2140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2140 rho)
    (r2141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2141 rho)
    (r2142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2142 rho)
    (tail : next (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) (rho 2143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg5 (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) next := by
  exact ⟨rho 2139, rho 2140, rho 2141, rho 2142, rho 2143, r2138, r2139, r2140, r2141, r2142, tail⟩

theorem template_scp_node5_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2143 rho)
    (r2144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2144 rho)
    (r2145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2145 rho)
    (r2146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2146 rho)
    (r2147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2147 rho)
    (tail : next (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) (rho 2143) (rho 2148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg6 (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) (rho 2143) next := by
  exact ⟨rho 2144, rho 2145, rho 2146, rho 2147, rho 2148, r2143, r2144, r2145, r2146, r2147, tail⟩

theorem template_scp_node5_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2148 rho)
    (r2149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2149 rho)
    (r2150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2150 rho)
    (r2151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2151 rho)
    (r2152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2152 rho)
    (tail : next (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg7 (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) (rho 2143) (rho 2148) next := by
  exact ⟨rho 2149, rho 2150, rho 2151, rho 2152, rho 2153, r2148, r2149, r2150, r2151, r2152, tail⟩

theorem template_scp_node5_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2153 rho)
    (r2154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2154 rho)
    (r2155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2155 rho)
    (r2156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2156 rho)
    (r2157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2157 rho)
    (tail : next (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg8 (rho 2118) (rho 2123) (rho 2128) (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) next := by
  exact ⟨rho 2154, rho 2155, rho 2156, rho 2157, rho 2158, r2153, r2154, r2155, r2156, r2157, tail⟩

theorem template_scp_node5_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2158 rho)
    (r2159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2159 rho)
    (r2160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2160 rho)
    (r2161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2161 rho)
    (r2162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2162 rho)
    (tail : next (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg9 (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) next := by
  exact ⟨rho 2159, rho 2160, rho 2161, rho 2162, rho 2163, r2158, r2159, r2160, r2161, r2162, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
