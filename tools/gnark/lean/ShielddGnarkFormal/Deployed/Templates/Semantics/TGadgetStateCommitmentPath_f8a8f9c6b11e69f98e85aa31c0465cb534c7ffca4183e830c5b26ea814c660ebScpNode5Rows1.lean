import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node5_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2163 rho)
    (r2164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2164 rho)
    (r2165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2165 rho)
    (r2166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2166 rho)
    (r2167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2167 rho)
    (tail : next (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg10 (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) next := by
  exact ⟨rho 2159, rho 2160, rho 2161, rho 2162, rho 2163, r2163, r2164, r2165, r2166, r2167, tail⟩

theorem template_scp_node5_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2168 rho)
    (r2169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2169 rho)
    (r2170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2170 rho)
    (r2171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2171 rho)
    (r2172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2172 rho)
    (tail : next (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163) (rho 2168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg11 (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163) next := by
  exact ⟨rho 2164, rho 2165, rho 2166, rho 2167, rho 2168, r2168, r2169, r2170, r2171, r2172, tail⟩

theorem template_scp_node5_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2173 rho)
    (r2174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2174 rho)
    (r2175 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2175 rho)
    (r2176 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2176 rho)
    (r2177 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2177 rho)
    (tail : next (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163) (rho 2168) (rho 2173)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg12 (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163) (rho 2168) next := by
  exact ⟨rho 2169, rho 2170, rho 2171, rho 2172, rho 2173, r2173, r2174, r2175, r2176, r2177, tail⟩

theorem template_scp_node5_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2178 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2178 rho)
    (r2179 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2179 rho)
    (r2180 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2180 rho)
    (r2181 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2181 rho)
    (r2182 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2182 rho)
    (tail : next (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg13 (rho 2133) (rho 2138) (rho 2143) (rho 2148) (rho 2153) (rho 2158) (rho 2163) (rho 2168) (rho 2173) next := by
  exact ⟨rho 2174, rho 2175, rho 2176, rho 2177, rho 2178, r2178, r2179, r2180, r2181, r2182, tail⟩

theorem template_scp_node5_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2183 rho)
    (r2184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2184 rho)
    (r2185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2185 rho)
    (r2186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2186 rho)
    (r2187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2187 rho)
    (tail : next (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg14 (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) next := by
  exact ⟨rho 2179, rho 2180, rho 2181, rho 2182, rho 2183, r2183, r2184, r2185, r2186, r2187, tail⟩

theorem template_scp_node5_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2188 rho)
    (r2189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2189 rho)
    (r2190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2190 rho)
    (r2191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2191 rho)
    (r2192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2192 rho)
    (tail : next (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) (rho 2188)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg15 (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) next := by
  exact ⟨rho 2184, rho 2185, rho 2186, rho 2187, rho 2188, r2188, r2189, r2190, r2191, r2192, tail⟩

theorem template_scp_node5_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2193 rho)
    (r2194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2194 rho)
    (r2195 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2195 rho)
    (r2196 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2196 rho)
    (r2197 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2197 rho)
    (tail : next (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) (rho 2188) (rho 2193)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg16 (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) (rho 2188) next := by
  exact ⟨rho 2189, rho 2190, rho 2191, rho 2192, rho 2193, r2193, r2194, r2195, r2196, r2197, tail⟩

theorem template_scp_node5_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2198 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2198 rho)
    (r2199 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2199 rho)
    (r2200 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2200 rho)
    (r2201 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2201 rho)
    (r2202 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2202 rho)
    (tail : next (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) (rho 2188) (rho 2193) (rho 2198)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg17 (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) (rho 2188) (rho 2193) next := by
  exact ⟨rho 2194, rho 2195, rho 2196, rho 2197, rho 2198, r2198, r2199, r2200, r2201, r2202, tail⟩

theorem template_scp_node5_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2203 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2203 rho)
    (r2204 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2204 rho)
    (r2205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2205 rho)
    (r2206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2206 rho)
    (r2207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2207 rho)
    (tail : next (rho 2183) (rho 2188) (rho 2193) (rho 2198) (rho 2203)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg18 (rho 2158) (rho 2163) (rho 2168) (rho 2173) (rho 2178) (rho 2183) (rho 2188) (rho 2193) (rho 2198) next := by
  exact ⟨rho 2199, rho 2200, rho 2201, rho 2202, rho 2203, r2203, r2204, r2205, r2206, r2207, tail⟩

theorem template_scp_node5_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2208 rho)
    (r2209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2209 rho)
    (r2210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2210 rho)
    (r2211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2211 rho)
    (r2212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2212 rho)
    (tail : next (rho 2183) (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg19 (rho 2183) (rho 2188) (rho 2193) (rho 2198) (rho 2203) next := by
  exact ⟨rho 2204, rho 2205, rho 2206, rho 2207, rho 2208, r2208, r2209, r2210, r2211, r2212, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
