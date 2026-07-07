import ShielddGnarkFormal.Deployed.CompressToField.Bridge
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.DecafCompressToField

def recBits {n : Nat} (rho : Nat → ZMod n) (base width : Nat) : ZMod n :=
  match width with
  | 0 => 0
  | width + 1 => rho base + 2 * recBits rho (base + 1) width

def powSumAcc {n : Nat} (rho : Nat → ZMod n) (acc pow : ZMod n) (base width : Nat) : ZMod n :=
  match width with
  | 0 => acc
  | width + 1 => powSumAcc rho (acc + pow * rho base) (2 * pow) (base + 1) width

theorem powSumAcc_eq {n : Nat} (rho : Nat → ZMod n) (acc pow : ZMod n) (base width : Nat) :
    powSumAcc rho acc pow base width = acc + pow * recBits rho base width := by
  induction width generalizing acc pow base with
  | zero => simp [powSumAcc, recBits]
  | succ width ih =>
      simp [powSumAcc, recBits, ih]
      ring

theorem recover_ofFn_eq_recBits {n : Nat} (rho : Nat → ZMod n) (base width : Nat) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin width => rho (base + i.val))) =
      recBits rho base width := by
  induction width generalizing base with
  | zero => simp [recover_binary_zmod', recBits]
  | succ width ih =>
      simp only [recover_binary_zmod', recBits, List.Vector.head_ofFn, List.Vector.tail_ofFn]
      have htail : (List.Vector.ofFn fun i : Fin width => rho (base + ↑i.succ)) =
          (List.Vector.ofFn fun i : Fin width => rho (base + 1 + ↑i)) := by
        apply List.Vector.ext
        intro i
        simp [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
      rw [htail, ih (base + 1)]
      simp

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
