import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Canon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52EncodePre

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.DeployedGadgets

theorem seg52_encode_post (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 45162) (rho 45164)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbEncodeSeg1K
      (rho 44799) (rho 44814) (seg52YDen rho) k := by
  have hrel := h
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r764, r765, r766, r767, r768, r769, r770, r771, r772, r773, r774, r775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow764 at r764

  unfold Seg52.relationRow765 at r765

  unfold Seg52.relationRow766 at r766

  unfold Seg52.relationRow767 at r767

  unfold Seg52.relationRow768 at r768

  unfold Seg52.relationRow769 at r769

  unfold Seg52.relationRow770 at r770

  unfold Seg52.relationRow771 at r771

  unfold Seg52.relationRow772 at r772

  unfold Seg52.relationRow773 at r773

  unfold Seg52.relationRow774 at r774

  unfold Seg52.relationRow775 at r775

  have hp0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide
  have hz : GatesDef.is_zero (rho 44818 - rho 44799) (rho 45157) := by
    refine is_zero_of_hint _ (rho 45158) _ ?_ ?_
    · linear_combination -r764
    · linear_combination r765
  have hzBool : GatesDef.is_bool (rho 45157) := by
    rcases hz with hz | hz
    · rw [hz.2]; exact is_bool_of_row 0 (by ring)
    · rw [hz.2]; exact is_bool_of_row 1 (by ring)
  have hsel : GatesDef.select (rho 45157) (-rho 44814) (rho 44814)
      (rho 44814 + rho 45159) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r766
  have hinvX : GatesDef.inv (1 - rho 45160) (rho 45161) :=
    inv_of_mul _ _ (by linear_combination r768)
  have hinvY : GatesDef.inv (seg52YDen rho) (rho 45163) := by
    apply inv_of_mul
    unfold seg52YDen
    linear_combination r770
  unfold Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbEncodeSeg1K
  refine seg52Canon_canonical rho hrel _ ?_
  simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.neg, GatesDef.eq]
  refine ⟨_, rfl, rho 45157, ?_,
    -rho 44814, (by ring), rho 44814 + rho 45159, hsel,
    rho 45160, (by linear_combination -r767),
    (2 * (rho 44814 + rho 45159) : Seg52.F), rfl,
    -rho 45160, (by linear_combination -rho 45160 * hp0),
    (1 - rho 45160 : Seg52.F), (by ring),
    -rho 45160, (by linear_combination -rho 45160 * hp0),
    (1 + rho 45160 : Seg52.F), (by ring),
    rho 45161, hinvX, rho 45162, (by linear_combination -r769),
    rho 45163, hinvY, rho 45164, (by linear_combination -r771),
    rho 45165, (by linear_combination -r772),
    rho 45166, (by linear_combination -r773),
    rho 45166 - rho 45165, rfl, (3021 * rho 45165 : Seg52.F), rfl,
    rho 45167, (by linear_combination -r774), (1 + rho 45167 : Seg52.F), rfl,
    (by linear_combination r775), hk⟩
  · simp only [seg52CanonBits, List.Vector.getElem_def,
      List.Vector.toList_ofFn, List.getElem_ofFn]
    simpa using hz

theorem seg52_value_base_onCurve (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r772, r773, r774, r775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow772 at r772

  unfold Seg52.relationRow773 at r773

  unfold Seg52.relationRow774 at r774

  unfold Seg52.relationRow775 at r775

  simp only [EdwardsBridge.onCurve, EdwardsBridge.d]
  linear_combination r775 - r772 + r773 - r774 -
    (3021 : Seg52.F) * rho 45165 * r773 -
    (3021 : Seg52.F) * rho 45164 * rho 45164 * r772

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
