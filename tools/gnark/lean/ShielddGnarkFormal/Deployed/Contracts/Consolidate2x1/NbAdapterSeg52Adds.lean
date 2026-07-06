import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Blind

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52_add_inputs (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (hp : EdwardsBridge.onCurve (seg52In0AccState rho 128)) (hq : EdwardsBridge.onCurve (seg52In1AccState rho 128)) (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 48744) (rho 48745)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK (seg52In0AccState rho 128).x (seg52In0AccState rho 128).y (seg52In1AccState rho 128).x (seg52In1AccState rho 128).y k ∧
    EdwardsBridge.addSpec (seg52In0AccState rho 128) (seg52In1AccState rho 128) ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow4350 at r4350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4350

  unfold Seg52.relationRow4351 at r4351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4351

  unfold Seg52.relationRow4352 at r4352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4352

  unfold Seg52.relationRow4353 at r4353

  unfold Seg52.relationRow4354 at r4354

  unfold Seg52.relationRow4355 at r4355

  have h0 : ((seg52In0AccState rho 128).x + (seg52In0AccState rho 128).y) * ((seg52In1AccState rho 128).x + (seg52In1AccState rho 128).y) = rho 48740 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4350
  have h1 : (seg52In0AccState rho 128).x * (seg52In1AccState rho 128).y = rho 48741 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4351
  have h2 : (seg52In0AccState rho 128).y * (seg52In1AccState rho 128).x = rho 48742 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4352
  have h3 : (3021 : Seg52.F) * rho 48741 * rho 48742 = rho 48743 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4353
  have h4 : (rho 48744) * ((1 : Seg52.F) + rho 48743) = rho 48741 + rho 48742 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4354
  have h5 : (rho 48745) * ((1 : Seg52.F) - rho 48743) = rho 48740 - rho 48741 - rho 48742 := by
    try simp only [seg52In0AccState, seg52In0AccX128, seg52In0AccY128, seg52In1AccState, seg52In1AccX128, seg52In1AccY128]
    linear_combination r4355
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    (seg52In0AccState rho 128).x (seg52In0AccState rho 128).y (seg52In1AccState rho 128).x (seg52In1AccState rho 128).y (rho 48740) (rho 48741) (rho 48742) (rho 48743)
    (rho 48744) (rho 48745) hp hq h0 h1 h2 h3 h4 h5
  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec
    (seg52In0AccState rho 128) (seg52In1AccState rho 128) ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)) k hadd hk, hadd⟩

theorem seg52_add_output (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (hp : EdwardsBridge.onCurve ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point))) (hq : EdwardsBridge.onCurve ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point))) (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 50536) (rho 50537)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).x ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).y ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y k ∧
    EdwardsBridge.addSpec ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)) ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)) ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6143, r6144, r6145, r6146, r6147, r6148, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow6143 at r6143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6143

  unfold Seg52.relationRow6144 at r6144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6144

  unfold Seg52.relationRow6145 at r6145

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6145

  unfold Seg52.relationRow6146 at r6146

  unfold Seg52.relationRow6147 at r6147

  unfold Seg52.relationRow6148 at r6148

  have h0 : (((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).x + ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).y) * (((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x + ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y) = rho 50532 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6143
  have h1 : ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).x * ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y = rho 50533 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6144
  have h2 : ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).y * ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x = rho 50534 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6145
  have h3 : (3021 : Seg52.F) * rho 50533 * rho 50534 = rho 50535 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6146
  have h4 : (rho 50536) * ((1 : Seg52.F) + rho 50535) = rho 50533 + rho 50534 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6147
  have h5 : (rho 50537) * ((1 : Seg52.F) - rho 50535) = rho 50532 - rho 50533 - rho 50534 := by
    try simp only [seg52Out0AccState, seg52Out0AccX128, seg52Out0AccY128]
    linear_combination r6148
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).x ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)).y ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y (rho 50532) (rho 50533) (rho 50534) (rho 50535)
    (rho 50536) (rho 50537) hp hq h0 h1 h2 h3 h4 h5
  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec
    ((⟨rho 48744, rho 48745⟩ : EdwardsBridge.Point)) ((⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ : EdwardsBridge.Point)) ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)) k hadd hk, hadd⟩

theorem seg52_final_addSpec (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (hp : EdwardsBridge.onCurve ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point))) (hq : EdwardsBridge.onCurve (seg52BlindAccState rho 251)) :
    EdwardsBridge.addSpec ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)) (seg52BlindAccState rho 251) ((⟨rho 52347, rho 52348⟩ : EdwardsBridge.Point)) := by
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

    _, _, _, _, _, _, _, _, _, p99

  ⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7954, r7955, r7956, r7957, r7958, r7959, r7960⟩

  unfold Seg52.relationRow7954 at r7954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7954

  unfold Seg52.relationRow7955 at r7955

  unfold Seg52.relationRow7956 at r7956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7956

  unfold Seg52.relationRow7957 at r7957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7957

  unfold Seg52.relationRow7958 at r7958

  unfold Seg52.relationRow7959 at r7959

  unfold Seg52.relationRow7960 at r7960

  have h0 : (((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)).x + ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)).y) * ((seg52BlindAccState rho 251).x + (seg52BlindAccState rho 251).y) = rho 52343 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    have hchar : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide
    first
    | linear_combination r7955 + (rho 50536 + rho 50537) * r7954 + ((rho 50536 + rho 50537) * rho 50538) * hchar
    | linear_combination r7955 + (rho 50536 + rho 50537) * r7954 - ((rho 50536 + rho 50537) * rho 50538) * hchar
  have h1 : ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)).x * (seg52BlindAccState rho 251).y = rho 52344 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r7956
  have h2 : ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)).y * (seg52BlindAccState rho 251).x = rho 52345 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r7957
  have h3 : (3021 : Seg52.F) * rho 52344 * rho 52345 = rho 52346 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r7958
  have h4 : (rho 52347) * ((1 : Seg52.F) + rho 52346) = rho 52344 + rho 52345 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r7959
  have h5 : (rho 52348) * ((1 : Seg52.F) - rho 52346) = rho 52343 - rho 52344 - rho 52345 := by
    try simp only [seg52BlindAccState, seg52BlindDeltaX250, seg52BlindDeltaY250]
    linear_combination r7960
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)).x ((⟨rho 50536, rho 50537⟩ : EdwardsBridge.Point)).y (seg52BlindAccState rho 251).x (seg52BlindAccState rho 251).y (rho 52343) (rho 52344) (rho 52345) (rho 52346)
    (rho 52347) (rho 52348) hp hq h0 h1 h2 h3 h4 h5
  exact hadd

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
