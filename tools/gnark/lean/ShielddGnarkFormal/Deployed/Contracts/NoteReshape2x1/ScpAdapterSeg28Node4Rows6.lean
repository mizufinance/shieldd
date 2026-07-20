import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node4_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2049 : Seg28.relationRow2049 rho)
    (r2050 : Seg28.relationRow2050 rho)
    (r2051 : Seg28.relationRow2051 rho)
    (r2052 : Seg28.relationRow2052 rho)
    (r2053 : Seg28.relationRow2053 rho)
    (tail : next (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg60 (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) next := by
  exact ⟨rho 21421, rho 21422, rho 21423, rho 21424, rho 21425, r2049, r2050, r2051, r2052, r2053, tail⟩

theorem seg28_scp_node4_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2054 : Seg28.relationRow2054 rho)
    (r2055 : Seg28.relationRow2055 rho)
    (r2056 : Seg28.relationRow2056 rho)
    (r2057 : Seg28.relationRow2057 rho)
    (r2058 : Seg28.relationRow2058 rho)
    (tail : next (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) (rho 21430)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg61 (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) next := by
  exact ⟨rho 21426, rho 21427, rho 21428, rho 21429, rho 21430, r2054, r2055, r2056, r2057, r2058, tail⟩

theorem seg28_scp_node4_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2059 : Seg28.relationRow2059 rho)
    (r2060 : Seg28.relationRow2060 rho)
    (r2061 : Seg28.relationRow2061 rho)
    (r2062 : Seg28.relationRow2062 rho)
    (r2063 : Seg28.relationRow2063 rho)
    (tail : next (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) (rho 21430) (rho 21435)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg62 (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) (rho 21430) next := by
  exact ⟨rho 21431, rho 21432, rho 21433, rho 21434, rho 21435, r2059, r2060, r2061, r2062, r2063, tail⟩

theorem seg28_scp_node4_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2064 : Seg28.relationRow2064 rho)
    (r2065 : Seg28.relationRow2065 rho)
    (r2066 : Seg28.relationRow2066 rho)
    (r2067 : Seg28.relationRow2067 rho)
    (r2068 : Seg28.relationRow2068 rho)
    (tail : next (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) (rho 21430) (rho 21435) (rho 21440)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg63 (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) (rho 21430) (rho 21435) next := by
  exact ⟨rho 21436, rho 21437, rho 21438, rho 21439, rho 21440, r2064, r2065, r2066, r2067, r2068, tail⟩

theorem seg28_scp_node4_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2069 : Seg28.relationRow2069 rho)
    (r2070 : Seg28.relationRow2070 rho)
    (r2071 : Seg28.relationRow2071 rho)
    (r2072 : Seg28.relationRow2072 rho)
    (r2073 : Seg28.relationRow2073 rho)
    (tail : next (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg64 (rho 21400) (rho 21405) (rho 21410) (rho 21415) (rho 21420) (rho 21425) (rho 21430) (rho 21435) (rho 21440) next := by
  exact ⟨rho 21441, rho 21442, rho 21443, rho 21444, rho 21445, r2069, r2070, r2071, r2072, r2073, tail⟩

theorem seg28_scp_node4_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2074 : Seg28.relationRow2074 rho)
    (r2075 : Seg28.relationRow2075 rho)
    (r2076 : Seg28.relationRow2076 rho)
    (r2077 : Seg28.relationRow2077 rho)
    (r2078 : Seg28.relationRow2078 rho)
    (tail : next (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg65 (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) next := by
  exact ⟨rho 21446, rho 21447, rho 21448, rho 21449, rho 21450, r2074, r2075, r2076, r2077, r2078, tail⟩

theorem seg28_scp_node4_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2079 : Seg28.relationRow2079 rho)
    (r2080 : Seg28.relationRow2080 rho)
    (r2081 : Seg28.relationRow2081 rho)
    (r2082 : Seg28.relationRow2082 rho)
    (r2083 : Seg28.relationRow2083 rho)
    (tail : next (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) (rho 21455)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg66 (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) next := by
  exact ⟨rho 21451, rho 21452, rho 21453, rho 21454, rho 21455, r2079, r2080, r2081, r2082, r2083, tail⟩

theorem seg28_scp_node4_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2084 : Seg28.relationRow2084 rho)
    (r2085 : Seg28.relationRow2085 rho)
    (r2086 : Seg28.relationRow2086 rho)
    (r2087 : Seg28.relationRow2087 rho)
    (r2088 : Seg28.relationRow2088 rho)
    (tail : next (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) (rho 21455) (rho 21460)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg67 (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) (rho 21455) next := by
  exact ⟨rho 21456, rho 21457, rho 21458, rho 21459, rho 21460, r2084, r2085, r2086, r2087, r2088, tail⟩

theorem seg28_scp_node4_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2089 : Seg28.relationRow2089 rho)
    (r2090 : Seg28.relationRow2090 rho)
    (r2091 : Seg28.relationRow2091 rho)
    (r2092 : Seg28.relationRow2092 rho)
    (r2093 : Seg28.relationRow2093 rho)
    (tail : next (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) (rho 21455) (rho 21460) (rho 21465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg68 (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) (rho 21455) (rho 21460) next := by
  exact ⟨rho 21461, rho 21462, rho 21463, rho 21464, rho 21465, r2089, r2090, r2091, r2092, r2093, tail⟩

theorem seg28_scp_node4_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2094 : Seg28.relationRow2094 rho)
    (r2095 : Seg28.relationRow2095 rho)
    (r2096 : Seg28.relationRow2096 rho)
    (r2097 : Seg28.relationRow2097 rho)
    (r2098 : Seg28.relationRow2098 rho)
    (tail : next (rho 21450) (rho 21455) (rho 21460) (rho 21465) (rho 21470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg69 (rho 21425) (rho 21430) (rho 21435) (rho 21440) (rho 21445) (rho 21450) (rho 21455) (rho 21460) (rho 21465) next := by
  exact ⟨rho 21466, rho 21467, rho 21468, rho 21469, rho 21470, r2094, r2095, r2096, r2097, r2098, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

