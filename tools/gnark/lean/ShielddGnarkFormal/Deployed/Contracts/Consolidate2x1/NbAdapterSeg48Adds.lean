import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Out0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Blind

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48_add_inputs (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (hp : EdwardsBridge.onCurve (seg48In0AccState rho 128)) (hq : EdwardsBridge.onCurve (seg48In1AccState rho 128)) (k : Seg48.F -> Seg48.F -> Prop) (hk : k (rho 37112) (rho 37113)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK (seg48In0AccState rho 128).x (seg48In0AccState rho 128).y (seg48In1AccState rho 128).x (seg48In1AccState rho 128).y k ∧
    EdwardsBridge.addSpec (seg48In0AccState rho 128) (seg48In1AccState rho 128) ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)) := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow4350 at r4350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4350

  unfold Seg48.relationRow4351 at r4351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4351

  unfold Seg48.relationRow4352 at r4352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4352

  unfold Seg48.relationRow4353 at r4353

  unfold Seg48.relationRow4354 at r4354

  unfold Seg48.relationRow4355 at r4355

  have h0 : ((seg48In0AccState rho 128).x + (seg48In0AccState rho 128).y) * ((seg48In1AccState rho 128).x + (seg48In1AccState rho 128).y) = rho 37108 := by
    try simp only [seg48In0AccState, seg48In0AccX128, seg48In0AccY128, seg48In1AccState, seg48In1AccX128, seg48In1AccY128]
    linear_combination r4350
  have h1 : (seg48In0AccState rho 128).x * (seg48In1AccState rho 128).y = rho 37109 := by
    try simp only [seg48In0AccState, seg48In0AccX128, seg48In0AccY128, seg48In1AccState, seg48In1AccX128, seg48In1AccY128]
    linear_combination r4351
  have h2 : (seg48In0AccState rho 128).y * (seg48In1AccState rho 128).x = rho 37110 := by
    try simp only [seg48In0AccState, seg48In0AccX128, seg48In0AccY128, seg48In1AccState, seg48In1AccX128, seg48In1AccY128]
    linear_combination r4352
  have h3 : (3021 : Seg48.F) * rho 37109 * rho 37110 = rho 37111 := by
    try simp only [seg48In0AccState, seg48In0AccX128, seg48In0AccY128, seg48In1AccState, seg48In1AccX128, seg48In1AccY128]
    linear_combination r4353
  have h4 : (rho 37112) * ((1 : Seg48.F) + rho 37111) = rho 37109 + rho 37110 := by
    try simp only [seg48In0AccState, seg48In0AccX128, seg48In0AccY128, seg48In1AccState, seg48In1AccX128, seg48In1AccY128]
    linear_combination r4354
  have h5 : (rho 37113) * ((1 : Seg48.F) - rho 37111) = rho 37108 - rho 37109 - rho 37110 := by
    try simp only [seg48In0AccState, seg48In0AccX128, seg48In0AccY128, seg48In1AccState, seg48In1AccX128, seg48In1AccY128]
    linear_combination r4355
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    (seg48In0AccState rho 128).x (seg48In0AccState rho 128).y (seg48In1AccState rho 128).x (seg48In1AccState rho 128).y (rho 37108) (rho 37109) (rho 37110) (rho 37111)
    (rho 37112) (rho 37113) hp hq h0 h1 h2 h3 h4 h5
  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec
    (seg48In0AccState rho 128) (seg48In1AccState rho 128) ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)) k hadd hk, hadd⟩

theorem seg48_add_output (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (hp : EdwardsBridge.onCurve ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point))) (hq : EdwardsBridge.onCurve ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point))) (k : Seg48.F -> Seg48.F -> Prop) (hk : k (rho 38904) (rho 38905)) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).x ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).y ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y k ∧
    EdwardsBridge.addSpec ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)) ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)) ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)) := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6143, r6144, r6145, r6146, r6147, r6148, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow6143 at r6143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6143

  unfold Seg48.relationRow6144 at r6144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6144

  unfold Seg48.relationRow6145 at r6145

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6145

  unfold Seg48.relationRow6146 at r6146

  unfold Seg48.relationRow6147 at r6147

  unfold Seg48.relationRow6148 at r6148

  have h0 : (((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).x + ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).y) * (((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x + ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y) = rho 38900 := by
    try simp only [seg48Out0AccState, seg48Out0AccX128, seg48Out0AccY128]
    linear_combination r6143
  have h1 : ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).x * ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y = rho 38901 := by
    try simp only [seg48Out0AccState, seg48Out0AccX128, seg48Out0AccY128]
    linear_combination r6144
  have h2 : ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).y * ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x = rho 38902 := by
    try simp only [seg48Out0AccState, seg48Out0AccX128, seg48Out0AccY128]
    linear_combination r6145
  have h3 : (3021 : Seg48.F) * rho 38901 * rho 38902 = rho 38903 := by
    try simp only [seg48Out0AccState, seg48Out0AccX128, seg48Out0AccY128]
    linear_combination r6146
  have h4 : (rho 38904) * ((1 : Seg48.F) + rho 38903) = rho 38901 + rho 38902 := by
    try simp only [seg48Out0AccState, seg48Out0AccX128, seg48Out0AccY128]
    linear_combination r6147
  have h5 : (rho 38905) * ((1 : Seg48.F) - rho 38903) = rho 38900 - rho 38901 - rho 38902 := by
    try simp only [seg48Out0AccState, seg48Out0AccX128, seg48Out0AccY128]
    linear_combination r6148
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).x ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)).y ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).x ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)).y (rho 38900) (rho 38901) (rho 38902) (rho 38903)
    (rho 38904) (rho 38905) hp hq h0 h1 h2 h3 h4 h5
  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec
    ((⟨rho 37112, rho 37113⟩ : EdwardsBridge.Point)) ((⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ : EdwardsBridge.Point)) ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)) k hadd hk, hadd⟩

theorem seg48_final_addSpec (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (hp : EdwardsBridge.onCurve ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point))) (hq : EdwardsBridge.onCurve (seg48BlindAccState rho 251)) :
    EdwardsBridge.addSpec ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)) (seg48BlindAccState rho 251) ((⟨rho 40715, rho 40716⟩ : EdwardsBridge.Point)) := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7954, r7955, r7956, r7957, r7958, r7959, r7960⟩

  unfold Seg48.relationRow7954 at r7954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7954

  unfold Seg48.relationRow7955 at r7955

  unfold Seg48.relationRow7956 at r7956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7956

  unfold Seg48.relationRow7957 at r7957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7957

  unfold Seg48.relationRow7958 at r7958

  unfold Seg48.relationRow7959 at r7959

  unfold Seg48.relationRow7960 at r7960

  have h0 : (((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)).x + ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)).y) * ((seg48BlindAccState rho 251).x + (seg48BlindAccState rho 251).y) = rho 40711 := by
    try simp only [seg48BlindAccState, seg48BlindDeltaX250, seg48BlindDeltaY250]
    have hchar : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg48.F) = 0 := by decide
    first
    | linear_combination r7955 + (rho 38904 + rho 38905) * r7954 + ((rho 38904 + rho 38905) * rho 38906) * hchar
    | linear_combination r7955 + (rho 38904 + rho 38905) * r7954 - ((rho 38904 + rho 38905) * rho 38906) * hchar
  have h1 : ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)).x * (seg48BlindAccState rho 251).y = rho 40712 := by
    try simp only [seg48BlindAccState, seg48BlindDeltaX250, seg48BlindDeltaY250]
    linear_combination r7956
  have h2 : ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)).y * (seg48BlindAccState rho 251).x = rho 40713 := by
    try simp only [seg48BlindAccState, seg48BlindDeltaX250, seg48BlindDeltaY250]
    linear_combination r7957
  have h3 : (3021 : Seg48.F) * rho 40712 * rho 40713 = rho 40714 := by
    try simp only [seg48BlindAccState, seg48BlindDeltaX250, seg48BlindDeltaY250]
    linear_combination r7958
  have h4 : (rho 40715) * ((1 : Seg48.F) + rho 40714) = rho 40712 + rho 40713 := by
    try simp only [seg48BlindAccState, seg48BlindDeltaX250, seg48BlindDeltaY250]
    linear_combination r7959
  have h5 : (rho 40716) * ((1 : Seg48.F) - rho 40714) = rho 40711 - rho 40712 - rho 40713 := by
    try simp only [seg48BlindAccState, seg48BlindDeltaX250, seg48BlindDeltaY250]
    linear_combination r7960
  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows
    ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)).x ((⟨rho 38904, rho 38905⟩ : EdwardsBridge.Point)).y (seg48BlindAccState rho 251).x (seg48BlindAccState rho 251).y (rho 40711) (rho 40712) (rho 40713) (rho 40714)
    (rho 40715) (rho 40716) hp hq h0 h1 h2 h3 h4 h5
  exact hadd

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
