import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node14_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5389 : Seg13.relationRow5389 rho)
    (r5390 : Seg13.relationRow5390 rho)
    (r5391 : Seg13.relationRow5391 rho)
    (r5392 : Seg13.relationRow5392 rho)
    (r5393 : Seg13.relationRow5393 rho)
    (tail : next (rho 53) (rho 54) (rho 12541) (rho 12542) (rho 12543) (rho 12544) (rho 12545) (rho 12550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg0 (rho 52) (rho 53) (rho 54) (rho 12540) (rho 12541) (rho 12542) (rho 12543) (rho 12544) (rho 12545) next := by
  exact ⟨rho 12546, rho 12547, rho 12548, rho 12549, rho 12550, r5389, r5390, r5391, r5392, r5393, tail⟩

theorem seg13_scp_node14_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5394 : Seg13.relationRow5394 rho)
    (r5395 : Seg13.relationRow5395 rho)
    (r5396 : Seg13.relationRow5396 rho)
    (r5397 : Seg13.relationRow5397 rho)
    (r5398 : Seg13.relationRow5398 rho)
    (tail : next (rho 53) (rho 54) (rho 12543) (rho 12544) (rho 12545) (rho 12550) (rho 12555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg1 (rho 53) (rho 54) (rho 12541) (rho 12542) (rho 12543) (rho 12544) (rho 12545) (rho 12550) next := by
  exact ⟨rho 12551, rho 12552, rho 12553, rho 12554, rho 12555, r5394, r5395, r5396, r5397, r5398, tail⟩

theorem seg13_scp_node14_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5399 : Seg13.relationRow5399 rho)
    (r5400 : Seg13.relationRow5400 rho)
    (r5401 : Seg13.relationRow5401 rho)
    (r5402 : Seg13.relationRow5402 rho)
    (r5403 : Seg13.relationRow5403 rho)
    (tail : next (rho 54) (rho 12545) (rho 12550) (rho 12555) (rho 12560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg2 (rho 53) (rho 54) (rho 12543) (rho 12544) (rho 12545) (rho 12550) (rho 12555) next := by
  exact ⟨rho 12556, rho 12557, rho 12558, rho 12559, rho 12560, r5399, r5400, r5401, r5402, r5403, tail⟩

theorem seg13_scp_node14_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5404 : Seg13.relationRow5404 rho)
    (r5405 : Seg13.relationRow5405 rho)
    (r5406 : Seg13.relationRow5406 rho)
    (r5407 : Seg13.relationRow5407 rho)
    (r5408 : Seg13.relationRow5408 rho)
    (tail : next (rho 12550) (rho 12555) (rho 12560) (rho 12565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg3 (rho 54) (rho 12545) (rho 12550) (rho 12555) (rho 12560) next := by
  exact ⟨rho 12561, rho 12562, rho 12563, rho 12564, rho 12565, r5404, r5405, r5406, r5407, r5408, tail⟩

theorem seg13_scp_node14_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5409 : Seg13.relationRow5409 rho)
    (r5410 : Seg13.relationRow5410 rho)
    (r5411 : Seg13.relationRow5411 rho)
    (r5412 : Seg13.relationRow5412 rho)
    (r5413 : Seg13.relationRow5413 rho)
    (tail : next (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg4 (rho 12550) (rho 12555) (rho 12560) (rho 12565) next := by
  exact ⟨rho 12566, rho 12567, rho 12568, rho 12569, rho 12570, r5409, r5410, r5411, r5412, r5413, tail⟩

theorem seg13_scp_node14_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5414 : Seg13.relationRow5414 rho)
    (r5415 : Seg13.relationRow5415 rho)
    (r5416 : Seg13.relationRow5416 rho)
    (r5417 : Seg13.relationRow5417 rho)
    (r5418 : Seg13.relationRow5418 rho)
    (tail : next (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) (rho 12575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg5 (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) next := by
  exact ⟨rho 12571, rho 12572, rho 12573, rho 12574, rho 12575, r5414, r5415, r5416, r5417, r5418, tail⟩

theorem seg13_scp_node14_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5419 : Seg13.relationRow5419 rho)
    (r5420 : Seg13.relationRow5420 rho)
    (r5421 : Seg13.relationRow5421 rho)
    (r5422 : Seg13.relationRow5422 rho)
    (r5423 : Seg13.relationRow5423 rho)
    (tail : next (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) (rho 12575) (rho 12580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg6 (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) (rho 12575) next := by
  exact ⟨rho 12576, rho 12577, rho 12578, rho 12579, rho 12580, r5419, r5420, r5421, r5422, r5423, tail⟩

theorem seg13_scp_node14_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5424 : Seg13.relationRow5424 rho)
    (r5425 : Seg13.relationRow5425 rho)
    (r5426 : Seg13.relationRow5426 rho)
    (r5427 : Seg13.relationRow5427 rho)
    (r5428 : Seg13.relationRow5428 rho)
    (tail : next (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) (rho 12575) (rho 12580) (rho 12585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg7 (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) (rho 12575) (rho 12580) next := by
  exact ⟨rho 12581, rho 12582, rho 12583, rho 12584, rho 12585, r5424, r5425, r5426, r5427, r5428, tail⟩

theorem seg13_scp_node14_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5429 : Seg13.relationRow5429 rho)
    (r5430 : Seg13.relationRow5430 rho)
    (r5431 : Seg13.relationRow5431 rho)
    (r5432 : Seg13.relationRow5432 rho)
    (r5433 : Seg13.relationRow5433 rho)
    (tail : next (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg8 (rho 12550) (rho 12555) (rho 12560) (rho 12565) (rho 12570) (rho 12575) (rho 12580) (rho 12585) next := by
  exact ⟨rho 12586, rho 12587, rho 12588, rho 12589, rho 12590, r5429, r5430, r5431, r5432, r5433, tail⟩

theorem seg13_scp_node14_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5434 : Seg13.relationRow5434 rho)
    (r5435 : Seg13.relationRow5435 rho)
    (r5436 : Seg13.relationRow5436 rho)
    (r5437 : Seg13.relationRow5437 rho)
    (r5438 : Seg13.relationRow5438 rho)
    (tail : next (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg9 (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) next := by
  exact ⟨rho 12591, rho 12592, rho 12593, rho 12594, rho 12595, r5434, r5435, r5436, r5437, r5438, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

