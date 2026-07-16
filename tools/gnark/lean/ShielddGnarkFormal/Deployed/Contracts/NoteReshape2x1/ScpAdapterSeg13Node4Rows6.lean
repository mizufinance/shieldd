import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node4_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2049 : Seg13.relationRow2049 rho)
    (r2050 : Seg13.relationRow2050 rho)
    (r2051 : Seg13.relationRow2051 rho)
    (r2052 : Seg13.relationRow2052 rho)
    (r2053 : Seg13.relationRow2053 rho)
    (tail : next (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg60 (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) next := by
  exact ⟨rho 9246, rho 9247, rho 9248, rho 9249, rho 9250, r2049, r2050, r2051, r2052, r2053, tail⟩

theorem seg13_scp_node4_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2054 : Seg13.relationRow2054 rho)
    (r2055 : Seg13.relationRow2055 rho)
    (r2056 : Seg13.relationRow2056 rho)
    (r2057 : Seg13.relationRow2057 rho)
    (r2058 : Seg13.relationRow2058 rho)
    (tail : next (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) (rho 9255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg61 (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) next := by
  exact ⟨rho 9251, rho 9252, rho 9253, rho 9254, rho 9255, r2054, r2055, r2056, r2057, r2058, tail⟩

theorem seg13_scp_node4_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2059 : Seg13.relationRow2059 rho)
    (r2060 : Seg13.relationRow2060 rho)
    (r2061 : Seg13.relationRow2061 rho)
    (r2062 : Seg13.relationRow2062 rho)
    (r2063 : Seg13.relationRow2063 rho)
    (tail : next (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) (rho 9255) (rho 9260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg62 (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) (rho 9255) next := by
  exact ⟨rho 9256, rho 9257, rho 9258, rho 9259, rho 9260, r2059, r2060, r2061, r2062, r2063, tail⟩

theorem seg13_scp_node4_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2064 : Seg13.relationRow2064 rho)
    (r2065 : Seg13.relationRow2065 rho)
    (r2066 : Seg13.relationRow2066 rho)
    (r2067 : Seg13.relationRow2067 rho)
    (r2068 : Seg13.relationRow2068 rho)
    (tail : next (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) (rho 9255) (rho 9260) (rho 9265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg63 (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) (rho 9255) (rho 9260) next := by
  exact ⟨rho 9261, rho 9262, rho 9263, rho 9264, rho 9265, r2064, r2065, r2066, r2067, r2068, tail⟩

theorem seg13_scp_node4_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2069 : Seg13.relationRow2069 rho)
    (r2070 : Seg13.relationRow2070 rho)
    (r2071 : Seg13.relationRow2071 rho)
    (r2072 : Seg13.relationRow2072 rho)
    (r2073 : Seg13.relationRow2073 rho)
    (tail : next (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg64 (rho 9225) (rho 9230) (rho 9235) (rho 9240) (rho 9245) (rho 9250) (rho 9255) (rho 9260) (rho 9265) next := by
  exact ⟨rho 9266, rho 9267, rho 9268, rho 9269, rho 9270, r2069, r2070, r2071, r2072, r2073, tail⟩

theorem seg13_scp_node4_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2074 : Seg13.relationRow2074 rho)
    (r2075 : Seg13.relationRow2075 rho)
    (r2076 : Seg13.relationRow2076 rho)
    (r2077 : Seg13.relationRow2077 rho)
    (r2078 : Seg13.relationRow2078 rho)
    (tail : next (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg65 (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) next := by
  exact ⟨rho 9271, rho 9272, rho 9273, rho 9274, rho 9275, r2074, r2075, r2076, r2077, r2078, tail⟩

theorem seg13_scp_node4_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2079 : Seg13.relationRow2079 rho)
    (r2080 : Seg13.relationRow2080 rho)
    (r2081 : Seg13.relationRow2081 rho)
    (r2082 : Seg13.relationRow2082 rho)
    (r2083 : Seg13.relationRow2083 rho)
    (tail : next (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) (rho 9280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg66 (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) next := by
  exact ⟨rho 9276, rho 9277, rho 9278, rho 9279, rho 9280, r2079, r2080, r2081, r2082, r2083, tail⟩

theorem seg13_scp_node4_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2084 : Seg13.relationRow2084 rho)
    (r2085 : Seg13.relationRow2085 rho)
    (r2086 : Seg13.relationRow2086 rho)
    (r2087 : Seg13.relationRow2087 rho)
    (r2088 : Seg13.relationRow2088 rho)
    (tail : next (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) (rho 9280) (rho 9285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg67 (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) (rho 9280) next := by
  exact ⟨rho 9281, rho 9282, rho 9283, rho 9284, rho 9285, r2084, r2085, r2086, r2087, r2088, tail⟩

theorem seg13_scp_node4_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2089 : Seg13.relationRow2089 rho)
    (r2090 : Seg13.relationRow2090 rho)
    (r2091 : Seg13.relationRow2091 rho)
    (r2092 : Seg13.relationRow2092 rho)
    (r2093 : Seg13.relationRow2093 rho)
    (tail : next (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) (rho 9280) (rho 9285) (rho 9290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg68 (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) (rho 9280) (rho 9285) next := by
  exact ⟨rho 9286, rho 9287, rho 9288, rho 9289, rho 9290, r2089, r2090, r2091, r2092, r2093, tail⟩

theorem seg13_scp_node4_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2094 : Seg13.relationRow2094 rho)
    (r2095 : Seg13.relationRow2095 rho)
    (r2096 : Seg13.relationRow2096 rho)
    (r2097 : Seg13.relationRow2097 rho)
    (r2098 : Seg13.relationRow2098 rho)
    (tail : next (rho 9275) (rho 9280) (rho 9285) (rho 9290) (rho 9295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg69 (rho 9250) (rho 9255) (rho 9260) (rho 9265) (rho 9270) (rho 9275) (rho 9280) (rho 9285) (rho 9290) next := by
  exact ⟨rho 9291, rho 9292, rho 9293, rho 9294, rho 9295, r2094, r2095, r2096, r2097, r2098, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

