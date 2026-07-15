import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node8_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3455 : Seg28.relationRow3455 rho)
    (r3456 : Seg28.relationRow3456 rho)
    (r3457 : Seg28.relationRow3457 rho)
    (r3458 : Seg28.relationRow3458 rho)
    (r3459 : Seg28.relationRow3459 rho)
    (tail : next (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg50 (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) next := by
  exact ⟨rho 22817, rho 22818, rho 22819, rho 22820, rho 22821, r3455, r3456, r3457, r3458, r3459, tail⟩

theorem seg28_scp_node8_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3460 : Seg28.relationRow3460 rho)
    (r3461 : Seg28.relationRow3461 rho)
    (r3462 : Seg28.relationRow3462 rho)
    (r3463 : Seg28.relationRow3463 rho)
    (r3464 : Seg28.relationRow3464 rho)
    (tail : next (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) (rho 22826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg51 (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) next := by
  exact ⟨rho 22822, rho 22823, rho 22824, rho 22825, rho 22826, r3460, r3461, r3462, r3463, r3464, tail⟩

theorem seg28_scp_node8_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3465 : Seg28.relationRow3465 rho)
    (r3466 : Seg28.relationRow3466 rho)
    (r3467 : Seg28.relationRow3467 rho)
    (r3468 : Seg28.relationRow3468 rho)
    (r3469 : Seg28.relationRow3469 rho)
    (tail : next (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) (rho 22826) (rho 22831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg52 (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) (rho 22826) next := by
  exact ⟨rho 22827, rho 22828, rho 22829, rho 22830, rho 22831, r3465, r3466, r3467, r3468, r3469, tail⟩

theorem seg28_scp_node8_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3470 : Seg28.relationRow3470 rho)
    (r3471 : Seg28.relationRow3471 rho)
    (r3472 : Seg28.relationRow3472 rho)
    (r3473 : Seg28.relationRow3473 rho)
    (r3474 : Seg28.relationRow3474 rho)
    (tail : next (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) (rho 22826) (rho 22831) (rho 22836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg53 (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) (rho 22826) (rho 22831) next := by
  exact ⟨rho 22832, rho 22833, rho 22834, rho 22835, rho 22836, r3470, r3471, r3472, r3473, r3474, tail⟩

theorem seg28_scp_node8_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3475 : Seg28.relationRow3475 rho)
    (r3476 : Seg28.relationRow3476 rho)
    (r3477 : Seg28.relationRow3477 rho)
    (r3478 : Seg28.relationRow3478 rho)
    (r3479 : Seg28.relationRow3479 rho)
    (tail : next (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg54 (rho 22641) (rho 22646) (rho 22651) (rho 22656) (rho 22661) (rho 22666) (rho 22671) (rho 22676) (rho 22681) (rho 22686) (rho 22691) (rho 22696) (rho 22701) (rho 22706) (rho 22711) (rho 22716) (rho 22721) (rho 22726) (rho 22731) (rho 22736) (rho 22741) (rho 22746) (rho 22751) (rho 22756) (rho 22761) (rho 22766) (rho 22771) (rho 22776) (rho 22781) (rho 22786) (rho 22791) (rho 22796) (rho 22801) (rho 22806) (rho 22811) (rho 22816) (rho 22821) (rho 22826) (rho 22831) (rho 22836) next := by
  exact ⟨rho 22837, rho 22838, rho 22839, rho 22840, rho 22841, r3475, r3476, r3477, r3478, r3479, tail⟩

theorem seg28_scp_node8_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3480 : Seg28.relationRow3480 rho)
    (r3481 : Seg28.relationRow3481 rho)
    (r3482 : Seg28.relationRow3482 rho)
    (r3483 : Seg28.relationRow3483 rho)
    (r3484 : Seg28.relationRow3484 rho)
    (tail : next (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg55 (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) next := by
  exact ⟨rho 22842, rho 22843, rho 22844, rho 22845, rho 22846, r3480, r3481, r3482, r3483, r3484, tail⟩

theorem seg28_scp_node8_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3485 : Seg28.relationRow3485 rho)
    (r3486 : Seg28.relationRow3486 rho)
    (r3487 : Seg28.relationRow3487 rho)
    (r3488 : Seg28.relationRow3488 rho)
    (r3489 : Seg28.relationRow3489 rho)
    (tail : next (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) (rho 22851)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg56 (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) next := by
  exact ⟨rho 22847, rho 22848, rho 22849, rho 22850, rho 22851, r3485, r3486, r3487, r3488, r3489, tail⟩

theorem seg28_scp_node8_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3490 : Seg28.relationRow3490 rho)
    (r3491 : Seg28.relationRow3491 rho)
    (r3492 : Seg28.relationRow3492 rho)
    (r3493 : Seg28.relationRow3493 rho)
    (r3494 : Seg28.relationRow3494 rho)
    (tail : next (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) (rho 22851) (rho 22856)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg57 (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) (rho 22851) next := by
  exact ⟨rho 22852, rho 22853, rho 22854, rho 22855, rho 22856, r3490, r3491, r3492, r3493, r3494, tail⟩

theorem seg28_scp_node8_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3495 : Seg28.relationRow3495 rho)
    (r3496 : Seg28.relationRow3496 rho)
    (r3497 : Seg28.relationRow3497 rho)
    (r3498 : Seg28.relationRow3498 rho)
    (r3499 : Seg28.relationRow3499 rho)
    (tail : next (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) (rho 22851) (rho 22856) (rho 22861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg58 (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) (rho 22851) (rho 22856) next := by
  exact ⟨rho 22857, rho 22858, rho 22859, rho 22860, rho 22861, r3495, r3496, r3497, r3498, r3499, tail⟩

theorem seg28_scp_node8_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3500 : Seg28.relationRow3500 rho)
    (r3501 : Seg28.relationRow3501 rho)
    (r3502 : Seg28.relationRow3502 rho)
    (r3503 : Seg28.relationRow3503 rho)
    (r3504 : Seg28.relationRow3504 rho)
    (tail : next (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg59 (rho 22821) (rho 22826) (rho 22831) (rho 22836) (rho 22841) (rho 22846) (rho 22851) (rho 22856) (rho 22861) next := by
  exact ⟨rho 22862, rho 22863, rho 22864, rho 22865, rho 22866, r3500, r3501, r3502, r3503, r3504, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

