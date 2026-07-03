import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Blind

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52_add_inputs (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (hp : EdwardsBridge.onCurve (seg52In0AccState rho 128)) (hq : EdwardsBridge.onCurve (seg52In1AccState rho 128)) (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 49384) (rho 49385)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK (seg52In0AccState rho 128).x (seg52In0AccState rho 128).y (seg52In1AccState rho 128).x (seg52In1AccState rho 128).y k ∧
    EdwardsBridge.addSpec (seg52In0AccState rho 128) (seg52In1AccState rho 128) ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p62, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4990, r4991, r4992, r4993, r4994, r4995, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow4990 at r4990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4990

  unfold Seg52.relationRow4991 at r4991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4991

  unfold Seg52.relationRow4992 at r4992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992

  unfold Seg52.relationRow4993 at r4993

  unfold Seg52.relationRow4994 at r4994

  unfold Seg52.relationRow4995 at r4995

  have h0 : ((seg52In0AccState rho 128).x + (seg52In0AccState rho 128).y) * ((seg52In1AccState rho 128).x + (seg52In1AccState rho 128).y) = rho 49380 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4990
  have h1 : (seg52In0AccState rho 128).x * (seg52In1AccState rho 128).y = rho 49381 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4991
  have h2 : (seg52In0AccState rho 128).y * (seg52In1AccState rho 128).x = rho 49382 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4992
  have h3 : (3021 : Seg52.F) * rho 49381 * rho 49382 = rho 49383 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4993
  have h4 : (rho 49384) * ((1 : Seg52.F) + rho 49383) = rho 49381 + rho 49382 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4994
  have h5 : (rho 49385) * ((1 : Seg52.F) - rho 49383) = rho 49380 - rho 49381 - rho 49382 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4995
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    (seg52In0AccState rho 128).x (seg52In0AccState rho 128).y (seg52In1AccState rho 128).x (seg52In1AccState rho 128).y (rho 49380) (rho 49381) (rho 49382) (rho 49383)
    (rho 49384) (rho 49385) hp hq h0 h1 h2 h3 h4 h5
  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec
    (seg52In0AccState rho 128) (seg52In1AccState rho 128) ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)) k hadd hk, hadd⟩

theorem seg52_add_output (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (hp : EdwardsBridge.onCurve ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point))) (hq : EdwardsBridge.onCurve ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point))) (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 51176) (rho 51177)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).x ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).y ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y k ∧
    EdwardsBridge.addSpec ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)) ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)) ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6783, r6784, r6785, r6786, r6787, r6788, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow6783 at r6783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6783

  unfold Seg52.relationRow6784 at r6784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6784

  unfold Seg52.relationRow6785 at r6785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6785

  unfold Seg52.relationRow6786 at r6786

  unfold Seg52.relationRow6787 at r6787

  unfold Seg52.relationRow6788 at r6788

  have h0 : (((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).x + ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).y) * (((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x + ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y) = rho 51172 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6783
  have h1 : ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).x * ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y = rho 51173 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6784
  have h2 : ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).y * ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x = rho 51174 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6785
  have h3 : (3021 : Seg52.F) * rho 51173 * rho 51174 = rho 51175 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6786
  have h4 : (rho 51176) * ((1 : Seg52.F) + rho 51175) = rho 51173 + rho 51174 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6787
  have h5 : (rho 51177) * ((1 : Seg52.F) - rho 51175) = rho 51172 - rho 51173 - rho 51174 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6788
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).x ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)).y ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y (rho 51172) (rho 51173) (rho 51174) (rho 51175)
    (rho 51176) (rho 51177) hp hq h0 h1 h2 h3 h4 h5
  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec
    ((⟨rho 49384, rho 49385⟩ : EdwardsBridge.Point)) ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)) ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)) k hadd hk, hadd⟩

theorem seg52_final_addSpec (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (hp : EdwardsBridge.onCurve ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point))) (hq : EdwardsBridge.onCurve (seg52BlindAccState rho 251)) :
    EdwardsBridge.addSpec ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)) (seg52BlindAccState rho 251) ((⟨rho 52987, rho 52988⟩ : EdwardsBridge.Point)) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p107

  ⟩

  unfold Seg52.relationPart107 at p107

  rcases p107 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8594, r8595, r8596, r8597, r8598, r8599, r8600⟩

  unfold Seg52.relationRow8594 at r8594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8594

  unfold Seg52.relationRow8595 at r8595

  unfold Seg52.relationRow8596 at r8596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8596

  unfold Seg52.relationRow8597 at r8597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8597

  unfold Seg52.relationRow8598 at r8598

  unfold Seg52.relationRow8599 at r8599

  unfold Seg52.relationRow8600 at r8600

  have h0 : (((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)).x + ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)).y) * ((seg52BlindAccState rho 251).x + (seg52BlindAccState rho 251).y) = rho 52983 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    have hchar : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide
    first
    | linear_combination r8595 + (rho 51176 + rho 51177) * r8594 + ((rho 51176 + rho 51177) * rho 51178) * hchar
    | linear_combination r8595 + (rho 51176 + rho 51177) * r8594 - ((rho 51176 + rho 51177) * rho 51178) * hchar
  have h1 : ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)).x * (seg52BlindAccState rho 251).y = rho 52984 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r8596
  have h2 : ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)).y * (seg52BlindAccState rho 251).x = rho 52985 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r8597
  have h3 : (3021 : Seg52.F) * rho 52984 * rho 52985 = rho 52986 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r8598
  have h4 : (rho 52987) * ((1 : Seg52.F) + rho 52986) = rho 52984 + rho 52985 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r8599
  have h5 : (rho 52988) * ((1 : Seg52.F) - rho 52986) = rho 52983 - rho 52984 - rho 52985 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r8600
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)).x ((⟨rho 51176, rho 51177⟩ : EdwardsBridge.Point)).y (seg52BlindAccState rho 251).x (seg52BlindAccState rho 251).y (rho 52983) (rho 52984) (rho 52985) (rho 52986)
    (rho 52987) (rho 52988) hp hq h0 h1 h2 h3 h4 h5
  exact hadd

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
