import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkPrefixLemmas111
import ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree
import ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree

theorem rvk_prefix_step112 (rho : Nat -> F)
    (r112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow112 rho)
    (r807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow807 rho)
    (r808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow808 rho)
    (r809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow809 rho)
    (r810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow810 rho)
    (r811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow811 rho)
    (hacc : onCurve (rvkRvkAcc rho 112)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 112 (rho 113)
      (rvkRvkAcc rho 112) (rvkRvkAcc rho (112 + 1)) := by
  have hbrow112 : (1*(rho 113))*(1 + (-1)*(rho 113)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow112] using r112
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX111 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY111 rho : F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr112 : RvkFixedBaseLadderChoiceFree.FixedStepRel 112 (rho 113)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX111 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY111 rho : F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX112 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY112 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.acc112, rvkAccX112_succ, rvkAccY112_succ, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree.rung112_wide (rho 1 : F) (rho 113 : F) (rvkAccX111 rho : F) (rvkAccY111 rho : F) (rho 808 : F) (rho 809 : F) (rho 810 : F) (rho 811 : F) (rho 812 : F) hinput
        (by simpa using rvk_prefix_112_v2 rho r807)
        (by simpa using rvk_prefix_112_addX rho r808)
        (by simpa using rvk_prefix_112_addY rho r809)
        (by simpa using rvk_prefix_112_selX rho r810)
        (by simpa using rvk_prefix_112_selY rho r811)
        hbrow112
  exact hr112

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

