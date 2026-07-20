import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Steps

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_sound (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    Seg13.spec rho := by
  unfold Seg13.spec Specs.deployedSpec13
  have hprefixZero := Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverPrefix_zero Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (k : Seg13.F) + (1 : Seg13.F)) (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) (rho 23)) (fun k => rho (94 - 3 * k)) (fun k => rho (95 - 3 * k)) (fun k => rho (96 - 3 * k)) (fun k => rho (7442 + 2 * k)) (fun k => rho (7443 + 2 * k))
  norm_num at hprefixZero
  have hprefixSucc (k : Nat) := Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverPrefix_succ Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (k : Seg13.F) + (1 : Seg13.F)) (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) (rho 23)) (fun k => rho (94 - 3 * k)) (fun k => rho (95 - 3 * k)) (fun k => rho (96 - 3 * k)) (fun k => rho (7442 + 2 * k)) (fun k => rho (7443 + 2 * k)) k
  have e := seg13_scp_leaf_eq rho h
  have a0 := seg13_scp_step0 rho h
  rw [e] at a0
  norm_num at a0
  rw [← hprefixZero] at a0
  have a1 := seg13_scp_step1 rho h
  rw [a0] at a1
  norm_num at a1
  have hprefixSucc1 := hprefixSucc 0
  norm_num at hprefixSucc1
  rw [← hprefixSucc1] at a1
  have a2 := seg13_scp_step2 rho h
  rw [a1] at a2
  norm_num at a2
  have hprefixSucc2 := hprefixSucc 1
  norm_num at hprefixSucc2
  rw [← hprefixSucc2] at a2
  have a3 := seg13_scp_step3 rho h
  rw [a2] at a3
  norm_num at a3
  have hprefixSucc3 := hprefixSucc 2
  norm_num at hprefixSucc3
  rw [← hprefixSucc3] at a3
  have a4 := seg13_scp_step4 rho h
  rw [a3] at a4
  norm_num at a4
  have hprefixSucc4 := hprefixSucc 3
  norm_num at hprefixSucc4
  rw [← hprefixSucc4] at a4
  have a5 := seg13_scp_step5 rho h
  rw [a4] at a5
  norm_num at a5
  have hprefixSucc5 := hprefixSucc 4
  norm_num at hprefixSucc5
  rw [← hprefixSucc5] at a5
  have a6 := seg13_scp_step6 rho h
  rw [a5] at a6
  norm_num at a6
  have hprefixSucc6 := hprefixSucc 5
  norm_num at hprefixSucc6
  rw [← hprefixSucc6] at a6
  have a7 := seg13_scp_step7 rho h
  rw [a6] at a7
  norm_num at a7
  have hprefixSucc7 := hprefixSucc 6
  norm_num at hprefixSucc7
  rw [← hprefixSucc7] at a7
  have a8 := seg13_scp_step8 rho h
  rw [a7] at a8
  norm_num at a8
  have hprefixSucc8 := hprefixSucc 7
  norm_num at hprefixSucc8
  rw [← hprefixSucc8] at a8
  have a9 := seg13_scp_step9 rho h
  rw [a8] at a9
  norm_num at a9
  have hprefixSucc9 := hprefixSucc 8
  norm_num at hprefixSucc9
  rw [← hprefixSucc9] at a9
  have a10 := seg13_scp_step10 rho h
  rw [a9] at a10
  norm_num at a10
  have hprefixSucc10 := hprefixSucc 9
  norm_num at hprefixSucc10
  rw [← hprefixSucc10] at a10
  have a11 := seg13_scp_step11 rho h
  rw [a10] at a11
  norm_num at a11
  have hprefixSucc11 := hprefixSucc 10
  norm_num at hprefixSucc11
  rw [← hprefixSucc11] at a11
  have a12 := seg13_scp_step12 rho h
  rw [a11] at a12
  norm_num at a12
  have hprefixSucc12 := hprefixSucc 11
  norm_num at hprefixSucc12
  rw [← hprefixSucc12] at a12
  have a13 := seg13_scp_step13 rho h
  rw [a12] at a13
  norm_num at a13
  have hprefixSucc13 := hprefixSucc 12
  norm_num at hprefixSucc13
  rw [← hprefixSucc13] at a13
  have a14 := seg13_scp_step14 rho h
  rw [a13] at a14
  norm_num at a14
  have hprefixSucc14 := hprefixSucc 13
  norm_num at hprefixSucc14
  rw [← hprefixSucc14] at a14
  have a15 := seg13_scp_step15 rho h
  rw [a14] at a15
  norm_num at a15
  have hprefixSucc15 := hprefixSucc 14
  norm_num at hprefixSucc15
  rw [← hprefixSucc15] at a15
  have a16 := seg13_scp_step16 rho h
  rw [a15] at a16
  norm_num at a16
  have hprefixSucc16 := hprefixSucc 15
  norm_num at hprefixSucc16
  rw [← hprefixSucc16] at a16
  have a17 := seg13_scp_step17 rho h
  rw [a16] at a17
  norm_num at a17
  have hprefixSucc17 := hprefixSucc 16
  norm_num at hprefixSucc17
  rw [← hprefixSucc17] at a17
  have a18 := seg13_scp_step18 rho h
  rw [a17] at a18
  norm_num at a18
  have hprefixSucc18 := hprefixSucc 17
  norm_num at hprefixSucc18
  rw [← hprefixSucc18] at a18
  have a19 := seg13_scp_step19 rho h
  rw [a18] at a19
  norm_num at a19
  have hprefixSucc19 := hprefixSucc 18
  norm_num at hprefixSucc19
  rw [← hprefixSucc19] at a19
  have a20 := seg13_scp_step20 rho h
  rw [a19] at a20
  norm_num at a20
  have hprefixSucc20 := hprefixSucc 19
  norm_num at hprefixSucc20
  rw [← hprefixSucc20] at a20
  have a21 := seg13_scp_step21 rho h
  rw [a20] at a21
  norm_num at a21
  have hprefixSucc21 := hprefixSucc 20
  norm_num at hprefixSucc21
  rw [← hprefixSucc21] at a21
  have a22 := seg13_scp_step22 rho h
  rw [a21] at a22
  norm_num at a22
  have hprefixSucc22 := hprefixSucc 21
  norm_num at hprefixSucc22
  rw [← hprefixSucc22] at a22
  have a23 := seg13_scp_step23 rho h
  rw [a22] at a23
  norm_num at a23
  have hprefixSucc23 := hprefixSucc 22
  norm_num at hprefixSucc23
  rw [← hprefixSucc23] at a23
  refine ⟨seg13_scp_bits_bool rho h, seg13_scp_recompose rho h, ?_⟩
  rw [← seg13ScpNode23Out]
  rw [Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H_eq_prefix23]
  exact a23

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

