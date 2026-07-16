import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node0_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r543 : Seg28.relationRow543 rho)
    (r544 : Seg28.relationRow544 rho)
    (r545 : Seg28.relationRow545 rho)
    (r546 : Seg28.relationRow546 rho)
    (r547 : Seg28.relationRow547 rho)
    (tail : next (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg50 (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) next := by
  exact ⟨rho 19937, rho 19938, rho 19939, rho 19940, rho 19941, r543, r544, r545, r546, r547, tail⟩

theorem seg28_scp_node0_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r548 : Seg28.relationRow548 rho)
    (r549 : Seg28.relationRow549 rho)
    (r550 : Seg28.relationRow550 rho)
    (r551 : Seg28.relationRow551 rho)
    (r552 : Seg28.relationRow552 rho)
    (tail : next (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) (rho 19946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg51 (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) next := by
  exact ⟨rho 19942, rho 19943, rho 19944, rho 19945, rho 19946, r548, r549, r550, r551, r552, tail⟩

theorem seg28_scp_node0_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r553 : Seg28.relationRow553 rho)
    (r554 : Seg28.relationRow554 rho)
    (r555 : Seg28.relationRow555 rho)
    (r556 : Seg28.relationRow556 rho)
    (r557 : Seg28.relationRow557 rho)
    (tail : next (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) (rho 19946) (rho 19951)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg52 (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) (rho 19946) next := by
  exact ⟨rho 19947, rho 19948, rho 19949, rho 19950, rho 19951, r553, r554, r555, r556, r557, tail⟩

theorem seg28_scp_node0_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r558 : Seg28.relationRow558 rho)
    (r559 : Seg28.relationRow559 rho)
    (r560 : Seg28.relationRow560 rho)
    (r561 : Seg28.relationRow561 rho)
    (r562 : Seg28.relationRow562 rho)
    (tail : next (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) (rho 19946) (rho 19951) (rho 19956)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg53 (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) (rho 19946) (rho 19951) next := by
  exact ⟨rho 19952, rho 19953, rho 19954, rho 19955, rho 19956, r558, r559, r560, r561, r562, tail⟩

theorem seg28_scp_node0_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r563 : Seg28.relationRow563 rho)
    (r564 : Seg28.relationRow564 rho)
    (r565 : Seg28.relationRow565 rho)
    (r566 : Seg28.relationRow566 rho)
    (r567 : Seg28.relationRow567 rho)
    (tail : next (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg54 (rho 19761) (rho 19766) (rho 19771) (rho 19776) (rho 19781) (rho 19786) (rho 19791) (rho 19796) (rho 19801) (rho 19806) (rho 19811) (rho 19816) (rho 19821) (rho 19826) (rho 19831) (rho 19836) (rho 19841) (rho 19846) (rho 19851) (rho 19856) (rho 19861) (rho 19866) (rho 19871) (rho 19876) (rho 19881) (rho 19886) (rho 19891) (rho 19896) (rho 19901) (rho 19906) (rho 19911) (rho 19916) (rho 19921) (rho 19926) (rho 19931) (rho 19936) (rho 19941) (rho 19946) (rho 19951) (rho 19956) next := by
  exact ⟨rho 19957, rho 19958, rho 19959, rho 19960, rho 19961, r563, r564, r565, r566, r567, tail⟩

theorem seg28_scp_node0_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r568 : Seg28.relationRow568 rho)
    (r569 : Seg28.relationRow569 rho)
    (r570 : Seg28.relationRow570 rho)
    (r571 : Seg28.relationRow571 rho)
    (r572 : Seg28.relationRow572 rho)
    (tail : next (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg55 (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) next := by
  exact ⟨rho 19962, rho 19963, rho 19964, rho 19965, rho 19966, r568, r569, r570, r571, r572, tail⟩

theorem seg28_scp_node0_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r573 : Seg28.relationRow573 rho)
    (r574 : Seg28.relationRow574 rho)
    (r575 : Seg28.relationRow575 rho)
    (r576 : Seg28.relationRow576 rho)
    (r577 : Seg28.relationRow577 rho)
    (tail : next (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) (rho 19971)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg56 (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) next := by
  exact ⟨rho 19967, rho 19968, rho 19969, rho 19970, rho 19971, r573, r574, r575, r576, r577, tail⟩

theorem seg28_scp_node0_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r578 : Seg28.relationRow578 rho)
    (r579 : Seg28.relationRow579 rho)
    (r580 : Seg28.relationRow580 rho)
    (r581 : Seg28.relationRow581 rho)
    (r582 : Seg28.relationRow582 rho)
    (tail : next (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) (rho 19971) (rho 19976)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg57 (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) (rho 19971) next := by
  exact ⟨rho 19972, rho 19973, rho 19974, rho 19975, rho 19976, r578, r579, r580, r581, r582, tail⟩

theorem seg28_scp_node0_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r583 : Seg28.relationRow583 rho)
    (r584 : Seg28.relationRow584 rho)
    (r585 : Seg28.relationRow585 rho)
    (r586 : Seg28.relationRow586 rho)
    (r587 : Seg28.relationRow587 rho)
    (tail : next (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) (rho 19971) (rho 19976) (rho 19981)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg58 (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) (rho 19971) (rho 19976) next := by
  exact ⟨rho 19977, rho 19978, rho 19979, rho 19980, rho 19981, r583, r584, r585, r586, r587, tail⟩

theorem seg28_scp_node0_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r588 : Seg28.relationRow588 rho)
    (r589 : Seg28.relationRow589 rho)
    (r590 : Seg28.relationRow590 rho)
    (r591 : Seg28.relationRow591 rho)
    (r592 : Seg28.relationRow592 rho)
    (tail : next (rho 19966) (rho 19971) (rho 19976) (rho 19981) (rho 19986)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg59 (rho 19941) (rho 19946) (rho 19951) (rho 19956) (rho 19961) (rho 19966) (rho 19971) (rho 19976) (rho 19981) next := by
  exact ⟨rho 19982, rho 19983, rho 19984, rho 19985, rho 19986, r588, r589, r590, r591, r592, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

