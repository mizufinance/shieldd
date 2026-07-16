import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpSteps

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

/-- Normalized state-commitment Merkle path endpoint (template): the position
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
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : F)
        + ((k + 1 : Nat) : F))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : F)
        (rho 1))
      (fun k => rho (285 - 3 * k)) (fun k => rho (287 - 3 * k))
      (fun k => rho (290 - 3 * k))
      (fun k => rho (232 + 2 * k)) (fun k => rho (233 + 2 * k))

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    spec rho := by
  unfold spec
  have e := template_scp_leaf_eq rho h
  have a0 := template_scp_step0 rho h
  rw [e] at a0
  have a1 := template_scp_step1 rho h
  rw [a0] at a1
  have a2 := template_scp_step2 rho h
  rw [a1] at a2
  have a3 := template_scp_step3 rho h
  rw [a2] at a3
  have a4 := template_scp_step4 rho h
  rw [a3] at a4
  have a5 := template_scp_step5 rho h
  rw [a4] at a5
  have a6 := template_scp_step6 rho h
  rw [a5] at a6
  have a7 := template_scp_step7 rho h
  rw [a6] at a7
  have a8 := template_scp_step8 rho h
  rw [a7] at a8
  have a9 := template_scp_step9 rho h
  rw [a8] at a9
  have a10 := template_scp_step10 rho h
  rw [a9] at a10
  have a11 := template_scp_step11 rho h
  rw [a10] at a11
  have a12 := template_scp_step12 rho h
  rw [a11] at a12
  have a13 := template_scp_step13 rho h
  rw [a12] at a13
  have a14 := template_scp_step14 rho h
  rw [a13] at a14
  have a15 := template_scp_step15 rho h
  rw [a14] at a15
  have a16 := template_scp_step16 rho h
  rw [a15] at a16
  have a17 := template_scp_step17 rho h
  rw [a16] at a17
  have a18 := template_scp_step18 rho h
  rw [a17] at a18
  have a19 := template_scp_step19 rho h
  rw [a18] at a19
  have a20 := template_scp_step20 rho h
  rw [a19] at a20
  have a21 := template_scp_step21 rho h
  rw [a20] at a21
  have a22 := template_scp_step22 rho h
  rw [a21] at a22
  have a23 := template_scp_step23 rho h
  rw [a22] at a23
  refine ⟨template_scp_bits_bool rho h, template_scp_recompose rho h, ?_⟩
  simpa [templateScpNode23Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using a23

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

