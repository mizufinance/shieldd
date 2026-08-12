import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.NormNum
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpSteps

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

/-- Normalized state-commitment Merkle path endpoint (seg33): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def spec (rho : Nat → F) : Prop :=
  (∀ i : Nat, i < 48 →
      rho (232 + i) = 0 ∨ rho (232 + i) = 1) ∧
  rho 280 = (1 : F) * rho (232 + 0)
      + (2 : F) * rho (232 + 1)
      + (4 : F) * rho (232 + 2)
      + (8 : F) * rho (232 + 3)
      + (16 : F) * rho (232 + 4)
      + (32 : F) * rho (232 + 5)
      + (64 : F) * rho (232 + 6)
      + (128 : F) * rho (232 + 7)
      + (256 : F) * rho (232 + 8)
      + (512 : F) * rho (232 + 9)
      + (1024 : F) * rho (232 + 10)
      + (2048 : F) * rho (232 + 11)
      + (4096 : F) * rho (232 + 12)
      + (8192 : F) * rho (232 + 13)
      + (16384 : F) * rho (232 + 14)
      + (32768 : F) * rho (232 + 15)
      + (65536 : F) * rho (232 + 16)
      + (131072 : F) * rho (232 + 17)
      + (262144 : F) * rho (232 + 18)
      + (524288 : F) * rho (232 + 19)
      + (1048576 : F) * rho (232 + 20)
      + (2097152 : F) * rho (232 + 21)
      + (4194304 : F) * rho (232 + 22)
      + (8388608 : F) * rho (232 + 23)
      + (16777216 : F) * rho (232 + 24)
      + (33554432 : F) * rho (232 + 25)
      + (67108864 : F) * rho (232 + 26)
      + (134217728 : F) * rho (232 + 27)
      + (268435456 : F) * rho (232 + 28)
      + (536870912 : F) * rho (232 + 29)
      + (1073741824 : F) * rho (232 + 30)
      + (2147483648 : F) * rho (232 + 31)
      + (4294967296 : F) * rho (232 + 32)
      + (8589934592 : F) * rho (232 + 33)
      + (17179869184 : F) * rho (232 + 34)
      + (34359738368 : F) * rho (232 + 35)
      + (68719476736 : F) * rho (232 + 36)
      + (137438953472 : F) * rho (232 + 37)
      + (274877906944 : F) * rho (232 + 38)
      + (549755813888 : F) * rho (232 + 39)
      + (1099511627776 : F) * rho (232 + 40)
      + (2199023255552 : F) * rho (232 + 41)
      + (4398046511104 : F) * rho (232 + 42)
      + (8796093022208 : F) * rho (232 + 43)
      + (17592186044416 : F) * rho (232 + 44)
      + (35184372088832 : F) * rho (232 + 45)
      + (70368744177664 : F) * rho (232 + 46)
      + (140737488355328 : F) * rho (232 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 8972
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 8977
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 8982
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 8987
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 8992
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : F)
        + (k : F) + (1 : F))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : F)
        (rho 1))
      (fun k => rho (285 + 363 * k)) (fun k => rho (287 + 363 * k))
      (fun k => rho (290 + 363 * k))
      (fun k => rho (232 + 2 * k)) (fun k => rho (233 + 2 * k))

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    spec rho := by
  unfold spec
  have hprefixZero := Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverPrefix_zero Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (k : F) + (1 : F)) (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : F) (rho 1)) (fun k => rho (285 + 363 * k)) (fun k => rho (287 + 363 * k)) (fun k => rho (290 + 363 * k)) (fun k => rho (232 + 2 * k)) (fun k => rho (233 + 2 * k))
  norm_num at hprefixZero
  have hprefixSucc (k : Nat) := Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverPrefix_succ Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (k : F) + (1 : F)) (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : F) (rho 1)) (fun k => rho (285 + 363 * k)) (fun k => rho (287 + 363 * k)) (fun k => rho (290 + 363 * k)) (fun k => rho (232 + 2 * k)) (fun k => rho (233 + 2 * k)) k
  have e := template_scp_leaf_eq rho h
  have a0 := template_scp_step0 rho h
  rw [e] at a0
  norm_num at a0
  rw [← hprefixZero] at a0
  have a1 := template_scp_step1 rho h
  rw [a0] at a1
  norm_num at a1
  have hprefixSucc1 := hprefixSucc 0
  norm_num at hprefixSucc1
  rw [← hprefixSucc1] at a1
  have a2 := template_scp_step2 rho h
  rw [a1] at a2
  norm_num at a2
  have hprefixSucc2 := hprefixSucc 1
  norm_num at hprefixSucc2
  rw [← hprefixSucc2] at a2
  have a3 := template_scp_step3 rho h
  rw [a2] at a3
  norm_num at a3
  have hprefixSucc3 := hprefixSucc 2
  norm_num at hprefixSucc3
  rw [← hprefixSucc3] at a3
  have a4 := template_scp_step4 rho h
  rw [a3] at a4
  norm_num at a4
  have hprefixSucc4 := hprefixSucc 3
  norm_num at hprefixSucc4
  rw [← hprefixSucc4] at a4
  have a5 := template_scp_step5 rho h
  rw [a4] at a5
  norm_num at a5
  have hprefixSucc5 := hprefixSucc 4
  norm_num at hprefixSucc5
  rw [← hprefixSucc5] at a5
  have a6 := template_scp_step6 rho h
  rw [a5] at a6
  norm_num at a6
  have hprefixSucc6 := hprefixSucc 5
  norm_num at hprefixSucc6
  rw [← hprefixSucc6] at a6
  have a7 := template_scp_step7 rho h
  rw [a6] at a7
  norm_num at a7
  have hprefixSucc7 := hprefixSucc 6
  norm_num at hprefixSucc7
  rw [← hprefixSucc7] at a7
  have a8 := template_scp_step8 rho h
  rw [a7] at a8
  norm_num at a8
  have hprefixSucc8 := hprefixSucc 7
  norm_num at hprefixSucc8
  rw [← hprefixSucc8] at a8
  have a9 := template_scp_step9 rho h
  rw [a8] at a9
  norm_num at a9
  have hprefixSucc9 := hprefixSucc 8
  norm_num at hprefixSucc9
  rw [← hprefixSucc9] at a9
  have a10 := template_scp_step10 rho h
  rw [a9] at a10
  norm_num at a10
  have hprefixSucc10 := hprefixSucc 9
  norm_num at hprefixSucc10
  rw [← hprefixSucc10] at a10
  have a11 := template_scp_step11 rho h
  rw [a10] at a11
  norm_num at a11
  have hprefixSucc11 := hprefixSucc 10
  norm_num at hprefixSucc11
  rw [← hprefixSucc11] at a11
  have a12 := template_scp_step12 rho h
  rw [a11] at a12
  norm_num at a12
  have hprefixSucc12 := hprefixSucc 11
  norm_num at hprefixSucc12
  rw [← hprefixSucc12] at a12
  have a13 := template_scp_step13 rho h
  rw [a12] at a13
  norm_num at a13
  have hprefixSucc13 := hprefixSucc 12
  norm_num at hprefixSucc13
  rw [← hprefixSucc13] at a13
  have a14 := template_scp_step14 rho h
  rw [a13] at a14
  norm_num at a14
  have hprefixSucc14 := hprefixSucc 13
  norm_num at hprefixSucc14
  rw [← hprefixSucc14] at a14
  have a15 := template_scp_step15 rho h
  rw [a14] at a15
  norm_num at a15
  have hprefixSucc15 := hprefixSucc 14
  norm_num at hprefixSucc15
  rw [← hprefixSucc15] at a15
  have a16 := template_scp_step16 rho h
  rw [a15] at a16
  norm_num at a16
  have hprefixSucc16 := hprefixSucc 15
  norm_num at hprefixSucc16
  rw [← hprefixSucc16] at a16
  have a17 := template_scp_step17 rho h
  rw [a16] at a17
  norm_num at a17
  have hprefixSucc17 := hprefixSucc 16
  norm_num at hprefixSucc17
  rw [← hprefixSucc17] at a17
  have a18 := template_scp_step18 rho h
  rw [a17] at a18
  norm_num at a18
  have hprefixSucc18 := hprefixSucc 17
  norm_num at hprefixSucc18
  rw [← hprefixSucc18] at a18
  have a19 := template_scp_step19 rho h
  rw [a18] at a19
  norm_num at a19
  have hprefixSucc19 := hprefixSucc 18
  norm_num at hprefixSucc19
  rw [← hprefixSucc19] at a19
  have a20 := template_scp_step20 rho h
  rw [a19] at a20
  norm_num at a20
  have hprefixSucc20 := hprefixSucc 19
  norm_num at hprefixSucc20
  rw [← hprefixSucc20] at a20
  have a21 := template_scp_step21 rho h
  rw [a20] at a21
  norm_num at a21
  have hprefixSucc21 := hprefixSucc 20
  norm_num at hprefixSucc21
  rw [← hprefixSucc21] at a21
  have a22 := template_scp_step22 rho h
  rw [a21] at a22
  norm_num at a22
  have hprefixSucc22 := hprefixSucc 21
  norm_num at hprefixSucc22
  rw [← hprefixSucc22] at a22
  have a23 := template_scp_step23 rho h
  rw [a22] at a23
  norm_num at a23
  have hprefixSucc23 := hprefixSucc 22
  norm_num at hprefixSucc23
  rw [← hprefixSucc23] at a23
  refine ⟨template_scp_bits_bool rho h, template_scp_recompose rho h, ?_⟩
  rw [← seg33ScpNode23Out]
  rw [Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recover24H_eq_prefix23]
  exact a23

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
