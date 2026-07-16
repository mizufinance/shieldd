import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node13_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5275 : Seg28.relationRow5275 rho)
    (r5276 : Seg28.relationRow5276 rho)
    (r5277 : Seg28.relationRow5277 rho)
    (r5278 : Seg28.relationRow5278 rho)
    (r5279 : Seg28.relationRow5279 rho)
    (tail : next (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg50 (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) next := by
  exact ⟨rho 24617, rho 24618, rho 24619, rho 24620, rho 24621, r5275, r5276, r5277, r5278, r5279, tail⟩

theorem seg28_scp_node13_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5280 : Seg28.relationRow5280 rho)
    (r5281 : Seg28.relationRow5281 rho)
    (r5282 : Seg28.relationRow5282 rho)
    (r5283 : Seg28.relationRow5283 rho)
    (r5284 : Seg28.relationRow5284 rho)
    (tail : next (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) (rho 24626)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg51 (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) next := by
  exact ⟨rho 24622, rho 24623, rho 24624, rho 24625, rho 24626, r5280, r5281, r5282, r5283, r5284, tail⟩

theorem seg28_scp_node13_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5285 : Seg28.relationRow5285 rho)
    (r5286 : Seg28.relationRow5286 rho)
    (r5287 : Seg28.relationRow5287 rho)
    (r5288 : Seg28.relationRow5288 rho)
    (r5289 : Seg28.relationRow5289 rho)
    (tail : next (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) (rho 24626) (rho 24631)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg52 (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) (rho 24626) next := by
  exact ⟨rho 24627, rho 24628, rho 24629, rho 24630, rho 24631, r5285, r5286, r5287, r5288, r5289, tail⟩

theorem seg28_scp_node13_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5290 : Seg28.relationRow5290 rho)
    (r5291 : Seg28.relationRow5291 rho)
    (r5292 : Seg28.relationRow5292 rho)
    (r5293 : Seg28.relationRow5293 rho)
    (r5294 : Seg28.relationRow5294 rho)
    (tail : next (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) (rho 24626) (rho 24631) (rho 24636)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg53 (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) (rho 24626) (rho 24631) next := by
  exact ⟨rho 24632, rho 24633, rho 24634, rho 24635, rho 24636, r5290, r5291, r5292, r5293, r5294, tail⟩

theorem seg28_scp_node13_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5295 : Seg28.relationRow5295 rho)
    (r5296 : Seg28.relationRow5296 rho)
    (r5297 : Seg28.relationRow5297 rho)
    (r5298 : Seg28.relationRow5298 rho)
    (r5299 : Seg28.relationRow5299 rho)
    (tail : next (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg54 (rho 24441) (rho 24446) (rho 24451) (rho 24456) (rho 24461) (rho 24466) (rho 24471) (rho 24476) (rho 24481) (rho 24486) (rho 24491) (rho 24496) (rho 24501) (rho 24506) (rho 24511) (rho 24516) (rho 24521) (rho 24526) (rho 24531) (rho 24536) (rho 24541) (rho 24546) (rho 24551) (rho 24556) (rho 24561) (rho 24566) (rho 24571) (rho 24576) (rho 24581) (rho 24586) (rho 24591) (rho 24596) (rho 24601) (rho 24606) (rho 24611) (rho 24616) (rho 24621) (rho 24626) (rho 24631) (rho 24636) next := by
  exact ⟨rho 24637, rho 24638, rho 24639, rho 24640, rho 24641, r5295, r5296, r5297, r5298, r5299, tail⟩

theorem seg28_scp_node13_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5300 : Seg28.relationRow5300 rho)
    (r5301 : Seg28.relationRow5301 rho)
    (r5302 : Seg28.relationRow5302 rho)
    (r5303 : Seg28.relationRow5303 rho)
    (r5304 : Seg28.relationRow5304 rho)
    (tail : next (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg55 (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) next := by
  exact ⟨rho 24642, rho 24643, rho 24644, rho 24645, rho 24646, r5300, r5301, r5302, r5303, r5304, tail⟩

theorem seg28_scp_node13_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5305 : Seg28.relationRow5305 rho)
    (r5306 : Seg28.relationRow5306 rho)
    (r5307 : Seg28.relationRow5307 rho)
    (r5308 : Seg28.relationRow5308 rho)
    (r5309 : Seg28.relationRow5309 rho)
    (tail : next (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) (rho 24651)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg56 (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) next := by
  exact ⟨rho 24647, rho 24648, rho 24649, rho 24650, rho 24651, r5305, r5306, r5307, r5308, r5309, tail⟩

theorem seg28_scp_node13_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5310 : Seg28.relationRow5310 rho)
    (r5311 : Seg28.relationRow5311 rho)
    (r5312 : Seg28.relationRow5312 rho)
    (r5313 : Seg28.relationRow5313 rho)
    (r5314 : Seg28.relationRow5314 rho)
    (tail : next (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) (rho 24651) (rho 24656)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg57 (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) (rho 24651) next := by
  exact ⟨rho 24652, rho 24653, rho 24654, rho 24655, rho 24656, r5310, r5311, r5312, r5313, r5314, tail⟩

theorem seg28_scp_node13_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5315 : Seg28.relationRow5315 rho)
    (r5316 : Seg28.relationRow5316 rho)
    (r5317 : Seg28.relationRow5317 rho)
    (r5318 : Seg28.relationRow5318 rho)
    (r5319 : Seg28.relationRow5319 rho)
    (tail : next (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) (rho 24651) (rho 24656) (rho 24661)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg58 (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) (rho 24651) (rho 24656) next := by
  exact ⟨rho 24657, rho 24658, rho 24659, rho 24660, rho 24661, r5315, r5316, r5317, r5318, r5319, tail⟩

theorem seg28_scp_node13_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5320 : Seg28.relationRow5320 rho)
    (r5321 : Seg28.relationRow5321 rho)
    (r5322 : Seg28.relationRow5322 rho)
    (r5323 : Seg28.relationRow5323 rho)
    (r5324 : Seg28.relationRow5324 rho)
    (tail : next (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg59 (rho 24621) (rho 24626) (rho 24631) (rho 24636) (rho 24641) (rho 24646) (rho 24651) (rho 24656) (rho 24661) next := by
  exact ⟨rho 24662, rho 24663, rho 24664, rho 24665, rho 24666, r5320, r5321, r5322, r5323, r5324, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

