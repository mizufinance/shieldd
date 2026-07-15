import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node13_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5075 : Seg28.relationRow5075 rho)
    (r5076 : Seg28.relationRow5076 rho)
    (r5077 : Seg28.relationRow5077 rho)
    (r5078 : Seg28.relationRow5078 rho)
    (r5079 : Seg28.relationRow5079 rho)
    (tail : next (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) (rho 24421)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg10 (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) next := by
  exact ⟨rho 24417, rho 24418, rho 24419, rho 24420, rho 24421, r5075, r5076, r5077, r5078, r5079, tail⟩

theorem seg28_scp_node13_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5080 : Seg28.relationRow5080 rho)
    (r5081 : Seg28.relationRow5081 rho)
    (r5082 : Seg28.relationRow5082 rho)
    (r5083 : Seg28.relationRow5083 rho)
    (r5084 : Seg28.relationRow5084 rho)
    (tail : next (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) (rho 24421) (rho 24426)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg11 (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) (rho 24421) next := by
  exact ⟨rho 24422, rho 24423, rho 24424, rho 24425, rho 24426, r5080, r5081, r5082, r5083, r5084, tail⟩

theorem seg28_scp_node13_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5085 : Seg28.relationRow5085 rho)
    (r5086 : Seg28.relationRow5086 rho)
    (r5087 : Seg28.relationRow5087 rho)
    (r5088 : Seg28.relationRow5088 rho)
    (r5089 : Seg28.relationRow5089 rho)
    (tail : next (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) (rho 24421) (rho 24426) (rho 24431)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg12 (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) (rho 24421) (rho 24426) next := by
  exact ⟨rho 24427, rho 24428, rho 24429, rho 24430, rho 24431, r5085, r5086, r5087, r5088, r5089, tail⟩

theorem seg28_scp_node13_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5090 : Seg28.relationRow5090 rho)
    (r5091 : Seg28.relationRow5091 rho)
    (r5092 : Seg28.relationRow5092 rho)
    (r5093 : Seg28.relationRow5093 rho)
    (r5094 : Seg28.relationRow5094 rho)
    (tail : next (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg13 (rho 24391) (rho 24396) (rho 24401) (rho 24406) (rho 24411) (rho 24416) (rho 24421) (rho 24426) (rho 24431) next := by
  exact ⟨rho 24432, rho 24433, rho 24434, rho 24435, rho 24436, r5090, r5091, r5092, r5093, r5094, tail⟩

theorem seg28_scp_node13_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5095 : Seg28.relationRow5095 rho)
    (r5096 : Seg28.relationRow5096 rho)
    (r5097 : Seg28.relationRow5097 rho)
    (r5098 : Seg28.relationRow5098 rho)
    (r5099 : Seg28.relationRow5099 rho)
    (tail : next (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg14 (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) next := by
  exact ⟨rho 24437, rho 24438, rho 24439, rho 24440, rho 24441, r5095, r5096, r5097, r5098, r5099, tail⟩

theorem seg28_scp_node13_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5100 : Seg28.relationRow5100 rho)
    (r5101 : Seg28.relationRow5101 rho)
    (r5102 : Seg28.relationRow5102 rho)
    (r5103 : Seg28.relationRow5103 rho)
    (r5104 : Seg28.relationRow5104 rho)
    (tail : next (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) (rho 24446)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg15 (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) next := by
  exact ⟨rho 24442, rho 24443, rho 24444, rho 24445, rho 24446, r5100, r5101, r5102, r5103, r5104, tail⟩

theorem seg28_scp_node13_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5105 : Seg28.relationRow5105 rho)
    (r5106 : Seg28.relationRow5106 rho)
    (r5107 : Seg28.relationRow5107 rho)
    (r5108 : Seg28.relationRow5108 rho)
    (r5109 : Seg28.relationRow5109 rho)
    (tail : next (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) (rho 24446) (rho 24451)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg16 (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) (rho 24446) next := by
  exact ⟨rho 24447, rho 24448, rho 24449, rho 24450, rho 24451, r5105, r5106, r5107, r5108, r5109, tail⟩

theorem seg28_scp_node13_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5110 : Seg28.relationRow5110 rho)
    (r5111 : Seg28.relationRow5111 rho)
    (r5112 : Seg28.relationRow5112 rho)
    (r5113 : Seg28.relationRow5113 rho)
    (r5114 : Seg28.relationRow5114 rho)
    (tail : next (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) (rho 24446) (rho 24451) (rho 24456)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg17 (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) (rho 24446) (rho 24451) next := by
  exact ⟨rho 24452, rho 24453, rho 24454, rho 24455, rho 24456, r5110, r5111, r5112, r5113, r5114, tail⟩

theorem seg28_scp_node13_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5115 : Seg28.relationRow5115 rho)
    (r5116 : Seg28.relationRow5116 rho)
    (r5117 : Seg28.relationRow5117 rho)
    (r5118 : Seg28.relationRow5118 rho)
    (r5119 : Seg28.relationRow5119 rho)
    (tail : next (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg18 (rho 24416) (rho 24421) (rho 24426) (rho 24431) (rho 24436) (rho 24441) (rho 24446) (rho 24451) (rho 24456) next := by
  exact ⟨rho 24457, rho 24458, rho 24459, rho 24460, rho 24461, r5115, r5116, r5117, r5118, r5119, tail⟩

theorem seg28_scp_node13_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5120 : Seg28.relationRow5120 rho)
    (r5121 : Seg28.relationRow5121 rho)
    (r5122 : Seg28.relationRow5122 rho)
    (r5123 : Seg28.relationRow5123 rho)
    (r5124 : Seg28.relationRow5124 rho)
    (tail : next (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg19 (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) next := by
  exact ⟨rho 24462, rho 24463, rho 24464, rho 24465, rho 24466, r5120, r5121, r5122, r5123, r5124, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

