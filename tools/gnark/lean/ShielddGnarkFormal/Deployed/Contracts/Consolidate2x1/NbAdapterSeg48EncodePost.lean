import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Canon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48EncodePre

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.DeployedGadgets

theorem seg48_encode_post (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (k : Seg48.F -> Seg48.F -> Prop) (hk : k (rho 33530) (rho 33532)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbEncodeSeg1K
      (rho 33167) (rho 33182) (seg48YDen rho) k := by
  have hrel := h
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r764, r765, r766, r767, r768, r769, r770, r771, r772, r773, r774, r775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow764 at r764

  unfold Seg48.relationRow765 at r765

  unfold Seg48.relationRow766 at r766

  unfold Seg48.relationRow767 at r767

  unfold Seg48.relationRow768 at r768

  unfold Seg48.relationRow769 at r769

  unfold Seg48.relationRow770 at r770

  unfold Seg48.relationRow771 at r771

  unfold Seg48.relationRow772 at r772

  unfold Seg48.relationRow773 at r773

  unfold Seg48.relationRow774 at r774

  unfold Seg48.relationRow775 at r775

  have hp0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg48.F) = 0 := by decide
  have hz : GatesDef.is_zero (rho 33186 - rho 33167) (rho 33525) := by
    refine is_zero_of_hint _ (rho 33526) _ ?_ ?_
    · linear_combination -r764
    · linear_combination r765
  have hzBool : GatesDef.is_bool (rho 33525) := by
    rcases hz with hz | hz
    · rw [hz.2]; exact is_bool_of_row 0 (by ring)
    · rw [hz.2]; exact is_bool_of_row 1 (by ring)
  have hsel : GatesDef.select (rho 33525) (-rho 33182) (rho 33182)
      (rho 33182 + rho 33527) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r766
  have hinvX : GatesDef.inv (1 - rho 33528) (rho 33529) :=
    inv_of_mul _ _ (by linear_combination r768)
  have hinvY : GatesDef.inv (seg48YDen rho) (rho 33531) := by
    apply inv_of_mul
    unfold seg48YDen
    linear_combination r770
  unfold Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbEncodeSeg1K
  refine seg48Canon_canonical rho hrel _ ?_
  simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.neg, GatesDef.eq]
  refine ⟨_, rfl, rho 33525, ?_,
    -rho 33182, (by ring), rho 33182 + rho 33527, hsel,
    rho 33528, (by linear_combination -r767),
    (2 * (rho 33182 + rho 33527) : Seg48.F), rfl,
    -rho 33528, (by linear_combination -rho 33528 * hp0),
    (1 - rho 33528 : Seg48.F), (by ring),
    -rho 33528, (by linear_combination -rho 33528 * hp0),
    (1 + rho 33528 : Seg48.F), (by ring),
    rho 33529, hinvX, rho 33530, (by linear_combination -r769),
    rho 33531, hinvY, rho 33532, (by linear_combination -r771),
    rho 33533, (by linear_combination -r772),
    rho 33534, (by linear_combination -r773),
    rho 33534 - rho 33533, rfl, (3021 * rho 33533 : Seg48.F), rfl,
    rho 33535, (by linear_combination -r774), (1 + rho 33535 : Seg48.F), rfl,
    (by linear_combination r775), hk⟩
  · simp only [seg48CanonBits, List.Vector.getElem_def,
      List.Vector.toList_ofFn, List.getElem_ofFn]
    simpa using hz

theorem seg48_value_base_onCurve (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    EdwardsBridge.onCurve ⟨rho 33530, rho 33532⟩ := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r772, r773, r774, r775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow772 at r772

  unfold Seg48.relationRow773 at r773

  unfold Seg48.relationRow774 at r774

  unfold Seg48.relationRow775 at r775

  simp only [EdwardsBridge.onCurve, EdwardsBridge.d]
  linear_combination r775 - r772 + r773 - r774 -
    (3021 : Seg48.F) * rho 33533 * r773 -
    (3021 : Seg48.F) * rho 33532 * rho 33532 * r772

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
