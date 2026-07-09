import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Steps

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_sound (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    Seg13.spec rho := by
  unfold Seg13.spec Specs.deployedSpec13
  have e := seg13_scp_leaf_eq rho h
  have a0 := seg13_scp_step0 rho h
  rw [e] at a0
  have a1 := seg13_scp_step1 rho h
  rw [a0] at a1
  have a2 := seg13_scp_step2 rho h
  rw [a1] at a2
  have a3 := seg13_scp_step3 rho h
  rw [a2] at a3
  have a4 := seg13_scp_step4 rho h
  rw [a3] at a4
  have a5 := seg13_scp_step5 rho h
  rw [a4] at a5
  have a6 := seg13_scp_step6 rho h
  rw [a5] at a6
  have a7 := seg13_scp_step7 rho h
  rw [a6] at a7
  have a8 := seg13_scp_step8 rho h
  rw [a7] at a8
  have a9 := seg13_scp_step9 rho h
  rw [a8] at a9
  have a10 := seg13_scp_step10 rho h
  rw [a9] at a10
  have a11 := seg13_scp_step11 rho h
  rw [a10] at a11
  have a12 := seg13_scp_step12 rho h
  rw [a11] at a12
  have a13 := seg13_scp_step13 rho h
  rw [a12] at a13
  have a14 := seg13_scp_step14 rho h
  rw [a13] at a14
  have a15 := seg13_scp_step15 rho h
  rw [a14] at a15
  have a16 := seg13_scp_step16 rho h
  rw [a15] at a16
  have a17 := seg13_scp_step17 rho h
  rw [a16] at a17
  have a18 := seg13_scp_step18 rho h
  rw [a17] at a18
  have a19 := seg13_scp_step19 rho h
  rw [a18] at a19
  have a20 := seg13_scp_step20 rho h
  rw [a19] at a20
  have a21 := seg13_scp_step21 rho h
  rw [a20] at a21
  have a22 := seg13_scp_step22 rho h
  rw [a21] at a22
  have a23 := seg13_scp_step23 rho h
  rw [a22] at a23
  refine ⟨seg13_scp_bits_bool rho h, seg13_scp_recompose rho h, ?_⟩
  simpa [seg13ScpNode23Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using a23

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

