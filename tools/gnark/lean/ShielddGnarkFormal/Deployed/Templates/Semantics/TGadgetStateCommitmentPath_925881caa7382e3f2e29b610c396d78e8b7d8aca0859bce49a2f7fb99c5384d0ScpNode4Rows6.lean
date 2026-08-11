import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node4_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2049 rho)
    (r2050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2050 rho)
    (r2051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2051 rho)
    (r2052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2052 rho)
    (r2053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2053 rho)
    (tail : next (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg60 (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) next := by
  exact ⟨rho 2052, rho 2053, rho 2054, rho 2055, rho 2056, r2049, r2050, r2051, r2052, r2053, tail⟩

theorem template_scp_node4_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2054 rho)
    (r2055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2055 rho)
    (r2056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2056 rho)
    (r2057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2057 rho)
    (r2058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2058 rho)
    (tail : next (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) (rho 2061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg61 (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) next := by
  exact ⟨rho 2057, rho 2058, rho 2059, rho 2060, rho 2061, r2054, r2055, r2056, r2057, r2058, tail⟩

theorem template_scp_node4_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2059 rho)
    (r2060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2060 rho)
    (r2061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2061 rho)
    (r2062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2062 rho)
    (r2063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2063 rho)
    (tail : next (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) (rho 2061) (rho 2066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg62 (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) (rho 2061) next := by
  exact ⟨rho 2062, rho 2063, rho 2064, rho 2065, rho 2066, r2059, r2060, r2061, r2062, r2063, tail⟩

theorem template_scp_node4_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2064 rho)
    (r2065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2065 rho)
    (r2066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2066 rho)
    (r2067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2067 rho)
    (r2068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2068 rho)
    (tail : next (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) (rho 2061) (rho 2066) (rho 2071)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg63 (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) (rho 2061) (rho 2066) next := by
  exact ⟨rho 2067, rho 2068, rho 2069, rho 2070, rho 2071, r2064, r2065, r2066, r2067, r2068, tail⟩

theorem template_scp_node4_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2069 rho)
    (r2070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2070 rho)
    (r2071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2071 rho)
    (r2072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2072 rho)
    (r2073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2073 rho)
    (tail : next (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg64 (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051) (rho 2056) (rho 2061) (rho 2066) (rho 2071) next := by
  exact ⟨rho 2072, rho 2073, rho 2074, rho 2075, rho 2076, r2069, r2070, r2071, r2072, r2073, tail⟩

theorem template_scp_node4_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2074 rho)
    (r2075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2075 rho)
    (r2076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2076 rho)
    (r2077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2077 rho)
    (r2078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2078 rho)
    (tail : next (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg65 (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) next := by
  exact ⟨rho 2077, rho 2078, rho 2079, rho 2080, rho 2081, r2074, r2075, r2076, r2077, r2078, tail⟩

theorem template_scp_node4_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2079 rho)
    (r2080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2080 rho)
    (r2081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2081 rho)
    (r2082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2082 rho)
    (r2083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2083 rho)
    (tail : next (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) (rho 2086)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg66 (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) next := by
  exact ⟨rho 2082, rho 2083, rho 2084, rho 2085, rho 2086, r2079, r2080, r2081, r2082, r2083, tail⟩

theorem template_scp_node4_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2084 rho)
    (r2085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2085 rho)
    (r2086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2086 rho)
    (r2087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2087 rho)
    (r2088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2088 rho)
    (tail : next (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) (rho 2086) (rho 2091)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg67 (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) (rho 2086) next := by
  exact ⟨rho 2087, rho 2088, rho 2089, rho 2090, rho 2091, r2084, r2085, r2086, r2087, r2088, tail⟩

theorem template_scp_node4_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2089 rho)
    (r2090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2090 rho)
    (r2091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2091 rho)
    (r2092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2092 rho)
    (r2093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2093 rho)
    (tail : next (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) (rho 2086) (rho 2091) (rho 2096)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg68 (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) (rho 2086) (rho 2091) next := by
  exact ⟨rho 2092, rho 2093, rho 2094, rho 2095, rho 2096, r2089, r2090, r2091, r2092, r2093, tail⟩

theorem template_scp_node4_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2094 rho)
    (r2095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2095 rho)
    (r2096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2096 rho)
    (r2097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2097 rho)
    (r2098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2098 rho)
    (tail : next (rho 2081) (rho 2086) (rho 2091) (rho 2096) (rho 2101)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg69 (rho 2056) (rho 2061) (rho 2066) (rho 2071) (rho 2076) (rho 2081) (rho 2086) (rho 2091) (rho 2096) next := by
  exact ⟨rho 2097, rho 2098, rho 2099, rho 2100, rho 2101, r2094, r2095, r2096, r2097, r2098, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
