import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node0_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r543 : Seg13.relationRow543 rho)
    (r544 : Seg13.relationRow544 rho)
    (r545 : Seg13.relationRow545 rho)
    (r546 : Seg13.relationRow546 rho)
    (r547 : Seg13.relationRow547 rho)
    (tail : next (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg50 (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) next := by
  exact ⟨rho 7750, rho 7751, rho 7752, rho 7753, rho 7754, r543, r544, r545, r546, r547, tail⟩

theorem seg13_scp_node0_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r548 : Seg13.relationRow548 rho)
    (r549 : Seg13.relationRow549 rho)
    (r550 : Seg13.relationRow550 rho)
    (r551 : Seg13.relationRow551 rho)
    (r552 : Seg13.relationRow552 rho)
    (tail : next (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) (rho 7759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg51 (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) next := by
  exact ⟨rho 7755, rho 7756, rho 7757, rho 7758, rho 7759, r548, r549, r550, r551, r552, tail⟩

theorem seg13_scp_node0_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r553 : Seg13.relationRow553 rho)
    (r554 : Seg13.relationRow554 rho)
    (r555 : Seg13.relationRow555 rho)
    (r556 : Seg13.relationRow556 rho)
    (r557 : Seg13.relationRow557 rho)
    (tail : next (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) (rho 7759) (rho 7764)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg52 (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) (rho 7759) next := by
  exact ⟨rho 7760, rho 7761, rho 7762, rho 7763, rho 7764, r553, r554, r555, r556, r557, tail⟩

theorem seg13_scp_node0_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r558 : Seg13.relationRow558 rho)
    (r559 : Seg13.relationRow559 rho)
    (r560 : Seg13.relationRow560 rho)
    (r561 : Seg13.relationRow561 rho)
    (r562 : Seg13.relationRow562 rho)
    (tail : next (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) (rho 7759) (rho 7764) (rho 7769)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg53 (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) (rho 7759) (rho 7764) next := by
  exact ⟨rho 7765, rho 7766, rho 7767, rho 7768, rho 7769, r558, r559, r560, r561, r562, tail⟩

theorem seg13_scp_node0_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r563 : Seg13.relationRow563 rho)
    (r564 : Seg13.relationRow564 rho)
    (r565 : Seg13.relationRow565 rho)
    (r566 : Seg13.relationRow566 rho)
    (r567 : Seg13.relationRow567 rho)
    (tail : next (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg54 (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659) (rho 7664) (rho 7669) (rho 7674) (rho 7679) (rho 7684) (rho 7689) (rho 7694) (rho 7699) (rho 7704) (rho 7709) (rho 7714) (rho 7719) (rho 7724) (rho 7729) (rho 7734) (rho 7739) (rho 7744) (rho 7749) (rho 7754) (rho 7759) (rho 7764) (rho 7769) next := by
  exact ⟨rho 7770, rho 7771, rho 7772, rho 7773, rho 7774, r563, r564, r565, r566, r567, tail⟩

theorem seg13_scp_node0_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r568 : Seg13.relationRow568 rho)
    (r569 : Seg13.relationRow569 rho)
    (r570 : Seg13.relationRow570 rho)
    (r571 : Seg13.relationRow571 rho)
    (r572 : Seg13.relationRow572 rho)
    (tail : next (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg55 (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) next := by
  exact ⟨rho 7775, rho 7776, rho 7777, rho 7778, rho 7779, r568, r569, r570, r571, r572, tail⟩

theorem seg13_scp_node0_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r573 : Seg13.relationRow573 rho)
    (r574 : Seg13.relationRow574 rho)
    (r575 : Seg13.relationRow575 rho)
    (r576 : Seg13.relationRow576 rho)
    (r577 : Seg13.relationRow577 rho)
    (tail : next (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) (rho 7784)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg56 (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) next := by
  exact ⟨rho 7780, rho 7781, rho 7782, rho 7783, rho 7784, r573, r574, r575, r576, r577, tail⟩

theorem seg13_scp_node0_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r578 : Seg13.relationRow578 rho)
    (r579 : Seg13.relationRow579 rho)
    (r580 : Seg13.relationRow580 rho)
    (r581 : Seg13.relationRow581 rho)
    (r582 : Seg13.relationRow582 rho)
    (tail : next (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) (rho 7784) (rho 7789)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg57 (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) (rho 7784) next := by
  exact ⟨rho 7785, rho 7786, rho 7787, rho 7788, rho 7789, r578, r579, r580, r581, r582, tail⟩

theorem seg13_scp_node0_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r583 : Seg13.relationRow583 rho)
    (r584 : Seg13.relationRow584 rho)
    (r585 : Seg13.relationRow585 rho)
    (r586 : Seg13.relationRow586 rho)
    (r587 : Seg13.relationRow587 rho)
    (tail : next (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) (rho 7784) (rho 7789) (rho 7794)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg58 (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) (rho 7784) (rho 7789) next := by
  exact ⟨rho 7790, rho 7791, rho 7792, rho 7793, rho 7794, r583, r584, r585, r586, r587, tail⟩

theorem seg13_scp_node0_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r588 : Seg13.relationRow588 rho)
    (r589 : Seg13.relationRow589 rho)
    (r590 : Seg13.relationRow590 rho)
    (r591 : Seg13.relationRow591 rho)
    (r592 : Seg13.relationRow592 rho)
    (tail : next (rho 7779) (rho 7784) (rho 7789) (rho 7794) (rho 7799)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg59 (rho 7754) (rho 7759) (rho 7764) (rho 7769) (rho 7774) (rho 7779) (rho 7784) (rho 7789) (rho 7794) next := by
  exact ⟨rho 7795, rho 7796, rho 7797, rho 7798, rho 7799, r588, r589, r590, r591, r592, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

